import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/home_bloc.dart';
import '../blocs/home_state.dart';
import '../cubit/cubit.dart';
import '../cubit/cubit_state.dart';
import 'loading_view.dart';
import 'succes_view.dart';
import 'failure_view.dart';
import 'initial_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final manualCubit = context.read<ManualCubit>();

    return Row(
      children: [
        // 🔹 Bloc -> Datos del celular
        Expanded(
          child: BlocBuilder<ManualBloc, ManualState>(
            builder: (context, state) {
              if (state is ManualLoading) return const LoadingView();
              if (state is ManualSuccess) {
                return SuccessView(
                  data: "Marca: ${state.marca}\n"
                      "Modelo: ${state.modelo}\n"
                      "Sistema: ${state.sistema}",
                );
              }
              if (state is ManualFailure) return FailureView(message: state.message);
              return const InitialView();
            },
          ),
        ),

        // 🔹 Cubit -> Instrucciones
        Expanded(
          child: BlocBuilder<ManualCubit, ManualCubitState>(
            builder: (context, state) {
              if (state is ManualCubitLoading) return const LoadingView();
              if (state is ManualCubitSuccess) {
                return SuccessView(data: state.instrucciones.join("\n"));
              }
              if (state is ManualCubitFailure) return FailureView(message: state.message);
              return Center(
                child: ElevatedButton(
                  onPressed: () => manualCubit.loadInstrucciones(),
                  child: const Text("Cargar Instrucciones (Cubit)"),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
