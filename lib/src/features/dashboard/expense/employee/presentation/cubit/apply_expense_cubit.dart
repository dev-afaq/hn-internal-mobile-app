import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'apply_expense_state.dart';

class ApplyExpenseCubit extends Cubit<ApplyExpenseState> {
  ApplyExpenseCubit() : super(const ApplyExpenseState());
  final expenseForm = FormGroup(
    {
      'title': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'description': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'date': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'completed': FormControl<bool>(
        validators: [
          Validators.required,
        ],
      ),
      'food': FormControl<bool>(
        validators: [
          Validators.required,
        ],
      ),
      'late_night': FormControl<bool>(
        validators: [
          Validators.required,
        ],
      ),
      'travel': FormControl<bool>(
        validators: [
          Validators.required,
        ],
      ),
      'meeting': FormControl<bool>(
        validators: [
          Validators.required,
        ],
      ),
      'picture': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );
}
