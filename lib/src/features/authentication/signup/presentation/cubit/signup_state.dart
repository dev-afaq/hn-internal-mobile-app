part of 'signup_cubit.dart';

class SignUpState extends Equatable {
  const SignUpState({this.status = RequestStatus.initial, this.message = ""});
  final RequestStatus status;
  final String message;
  SignUpState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return SignUpState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [
        status,
        message,
      ];
}
