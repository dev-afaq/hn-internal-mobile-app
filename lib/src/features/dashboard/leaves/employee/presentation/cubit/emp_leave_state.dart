part of 'emp_leave_cubit.dart';

class EmpLeaveState extends Equatable {
  const EmpLeaveState({
    this.status = RequestStatus.initial,
    this.message = "",
  });
  final RequestStatus status;
  final String message;
  EmpLeaveState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return EmpLeaveState(
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
