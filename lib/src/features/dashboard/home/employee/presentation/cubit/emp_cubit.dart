import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'emp_state.dart';

class EmpCubit extends Cubit<EmpState> {
  EmpCubit()
      : super(
          const EmpState(),
        );
}
