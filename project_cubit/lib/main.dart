import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/home_page.dart';
import 'blocs/home_bloc.dart';
import 'blocs/home_event.dart';
import 'cubit/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ManualBloc()..add(LoadManual())),
        BlocProvider(create: (_) => ManualCubit()),
      ],
      child: MaterialApp(
        title: 'Manual de Usuario',
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
