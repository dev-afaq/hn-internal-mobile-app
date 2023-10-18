import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../src.dart';

part 'emp_leave_state.dart';

class EmpLeaveCubit extends Cubit<EmpLeaveState> {
  EmpLeaveCubit()
      : super(
          const EmpLeaveState(),
        );
  final leaveForm = FormGroup(
    {
      'title': FormControl<String>(
        validators: [Validators.required],
      ),
      'description': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'from_date': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'to_date': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'manager': FormControl<int>(
        validators: [
          Validators.required,
        ],
      ),
      'leave_type': FormControl<int>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
  submit() {
    emit(state.copyWith(
      status: RequestStatus.success,
    ));
  }
}
