part of 'manager_home_cubit.dart';

class ManagerHomeState extends Equatable {
  const ManagerHomeState({
    this.status = RequestStatus.initial,
    this.message = "",
  });

  final RequestStatus status;
  final String message;
  ManagerHomeState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return ManagerHomeState(
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
