part of 'apply_expense_cubit.dart';

class ApplyExpenseState extends Equatable {
  const ApplyExpenseState({
    this.status = RequestStatus.initial,
    this.message = "",
  });
  final RequestStatus status;
  final String message;
  ApplyExpenseState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return ApplyExpenseState(
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
