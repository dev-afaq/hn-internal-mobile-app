import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'finance_home_state.dart';

class FinanceHomeCubit extends Cubit<FinanceHomeState> {
  FinanceHomeCubit()
      : super(
          const FinanceHomeState(),
        );
}