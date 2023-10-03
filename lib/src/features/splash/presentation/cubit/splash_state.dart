part of 'splash_cubit.dart';

class SplashState extends Equatable {
  const SplashState({
    this.status = RequestStatus.initial,
  });
  final RequestStatus status;
  SplashState copyWith({RequestStatus? status}) {
    return SplashState(
      status: status ?? this.status,
    );
  }

  List<Object> get props => [
        status,
      ];
}
