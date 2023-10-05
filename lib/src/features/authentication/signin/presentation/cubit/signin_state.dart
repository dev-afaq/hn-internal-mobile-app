part of 'signin_cubit.dart';

class SignInState extends Equatable {
  const SignInState({
    this.status = RequestStatus.initial,
    this.message = "",
  });
  final RequestStatus status;
  final String message;
  SignInState copyWith({
    RequestStatus? status,
    String? message,
  }) {
    return SignInState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  List<Object> get props => [];
}
