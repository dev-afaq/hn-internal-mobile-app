import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'emp_expense_state.dart';

class EmpExpenseCubit extends Cubit<EmpExpenseState> {
  EmpExpenseCubit() : super(const EmpExpenseState());
}
