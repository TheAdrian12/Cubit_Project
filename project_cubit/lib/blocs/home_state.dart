abstract class ManualState {}

class ManualInitial extends ManualState {}

class ManualLoading extends ManualState {}

class ManualSuccess extends ManualState {
  final String marca;
  final String modelo;
  final String sistema;

  ManualSuccess({
    required this.marca,
    required this.modelo,
    required this.sistema,
  });
}

class ManualFailure extends ManualState {
  final String message;
  ManualFailure(this.message);
}
