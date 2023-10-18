part of 'emp_home_cubit.dart';

class EmpHomeState extends Equatable {
  const EmpHomeState({
    this.status = RequestStatus.initial,
    this.message = "",
  });
  final RequestStatus status;
  final String message;
  EmpHomeState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return EmpHomeState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  List<Object> get props => [
        status,
        message,
      ];
}
