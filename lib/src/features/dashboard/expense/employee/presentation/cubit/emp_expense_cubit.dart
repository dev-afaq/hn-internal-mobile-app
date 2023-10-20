import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'emp_expense_state.dart';

class EmpExpenseCubit extends Cubit<EmpExpenseState> {
  EmpExpenseCubit() : super(const EmpExpenseState());
}
