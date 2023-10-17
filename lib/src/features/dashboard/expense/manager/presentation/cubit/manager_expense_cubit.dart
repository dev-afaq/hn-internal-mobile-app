import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'manager_expense_state.dart';

class ManagerExpenseCubit extends Cubit<ManagerExpenseState> {
  ManagerExpenseCubit() : super(const ManagerExpenseState());
  final remarksForm = FormGroup(
    {
      'remarks': FormControl<String>(
        validators: [Validators.required],
      ),
    },
  );
}
