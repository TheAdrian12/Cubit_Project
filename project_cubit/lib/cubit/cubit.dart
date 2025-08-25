import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit_state.dart';
import '../data/data-service.dart';

class ManualCubit extends Cubit<ManualCubitState> {
  final DataService _dataService = DataService();

  ManualCubit() : super(ManualCubitInitial());

  Future<void> loadInstrucciones() async {
    try {
      emit(ManualCubitLoading());
      final data = await _dataService.loadData();
      final instrucciones = (data['manual']['instrucciones'] as List)
          .map((i) => i.toString())
          .toList();
      emit(ManualCubitSuccess(instrucciones));
    } catch (e) {
      emit(ManualCubitFailure("Error cargando instrucciones"));
    }
  }
}
