part of 'finance_home_cubit.dart';

class FinanceHomeState extends Equatable {
  const FinanceHomeState({
    this.status = RequestStatus.initial,
    this.message = "",
  });
  final RequestStatus status;
  final String message;
  FinanceHomeState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return FinanceHomeState(
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
