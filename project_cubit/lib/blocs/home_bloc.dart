import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';
import '../data/data-service.dart';

class ManualBloc extends Bloc<ManualEvent, ManualState> {
  final DataService _dataService = DataService();

  ManualBloc() : super(ManualInitial()) {
    on<LoadManual>((event, emit) async {
      emit(ManualLoading());
      try {
        final data = await _dataService.loadData();
        final celular = data['celular'];
        emit(ManualSuccess(
          marca: celular['marca'],
          modelo: celular['modelo'],
          sistema: celular['sistema'],
        ));
      } catch (e) {
        emit(ManualFailure("Error cargando manual del celular"));
      }
    });
  }
}
