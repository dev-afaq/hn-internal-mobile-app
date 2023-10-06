import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'emp_home_state.dart';

class EmpHomeCubit extends Cubit<EmpHomeState> {
  EmpHomeCubit()
      : super(
          const EmpHomeState(),
        );
}
