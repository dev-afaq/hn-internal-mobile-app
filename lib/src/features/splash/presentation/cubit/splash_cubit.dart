import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';
import '../../../../src.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState()) {
    _init();
  }
  _init() {
    Timer(const Duration(milliseconds: 1500), () {
      emit(
        state.copyWith(
          status: RequestStatus.success,
        ),
      );
    });
  }
}
