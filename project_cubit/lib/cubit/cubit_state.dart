
abstract class ManualCubitState {}


class ManualCubitInitial extends ManualCubitState {}


class ManualCubitLoading extends ManualCubitState {}


class ManualCubitSuccess extends ManualCubitState {
  final List<String> instrucciones;

  ManualCubitSuccess(this.instrucciones);
}


class ManualCubitFailure extends ManualCubitState {
  final String message;

  ManualCubitFailure(this.message);
}
