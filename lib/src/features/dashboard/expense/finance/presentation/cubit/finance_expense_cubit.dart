import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'finance_expense_state.dart';

class FinanceExpenseCubit extends Cubit<FinanceExpenseState> {
  FinanceExpenseCubit() : super(const FinanceExpenseState());
  final remarksForm = FormGroup(
    {
      'remarks': FormControl<String>(
        validators: [Validators.required],
      ),
    },
  );
}