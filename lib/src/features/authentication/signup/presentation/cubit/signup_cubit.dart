import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../src.dart';

part 'signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState());
  final signUpForm = FormGroup(
    {
      'fName': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'lName': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'email': FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      // 'picture': FormControl<String>(
      //   validators: [
      //     Validators.required,
      //   ],
      // ),
      'number': FormControl<String>(
        validators: [
          Validators.minLength(11),
          Validators.required,
        ],
      ),
      'password_confirmation': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'password': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(8),
        ],
      ),
      'user': FormControl<String>(
        validators: [Validators.required],
      ),
    },
    validators: [
      Validators.mustMatch('password', 'password_confirmation'),
    ],
  );
  signUp() {
    emit(state.copyWith(
      status: RequestStatus.success,
    ));
  }
}
