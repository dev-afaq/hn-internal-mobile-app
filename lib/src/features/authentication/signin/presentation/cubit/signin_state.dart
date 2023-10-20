part of 'signin_cubit.dart';

class SignInState extends Equatable {
  const SignInState({
    this.status = RequestStatus.initial,
    this.message = "",
    this.obscureText = true,
  });
  final bool obscureText;
  final RequestStatus status;
  final String message;
  SignInState copyWith({
    RequestStatus? status,
    String? message,
    bool? obscureText,
  }) {
    return SignInState(
      status: status ?? this.status,
      message: message ?? this.message,
      obscureText: obscureText ?? this.obscureText,
    );
  }

  @override
  List<Object> get props => [
        status,
        obscureText,
        message,
      ];
}
