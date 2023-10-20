part of 'hr_leave_cubit.dart';

class HrLeaveState extends Equatable {
  const HrLeaveState({
    this.status = RequestStatus.initial,
    this.message = "",
    this.leaveSummary = "daily",
  });
  final RequestStatus status;
  final String message;
  final String leaveSummary;
  HrLeaveState copyWith(
      {RequestStatus? status, String? message, String? leaveSummary}) {
    return HrLeaveState(
      status: status ?? this.status,
      message: message ?? this.message,
      leaveSummary: leaveSummary ?? this.leaveSummary,
    );
  }

  @override
  List<Object> get props => [
        status,
        message,
        leaveSummary,
      ];
}
