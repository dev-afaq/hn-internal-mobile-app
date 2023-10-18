part of 'hr_home_cubit.dart';

class HrHomeState extends Equatable {
  const HrHomeState({this.status = RequestStatus.initial, this.message = ""});
  final RequestStatus status;
  final String message;
  HrHomeState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return HrHomeState(
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
