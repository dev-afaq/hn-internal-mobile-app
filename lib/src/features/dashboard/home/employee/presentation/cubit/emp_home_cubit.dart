import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../../src.dart';

part 'emp_home_state.dart';

class EmpHomeCubit extends Cubit<EmpHomeState> {
  EmpHomeCubit()
      : super(
          const EmpHomeState(),
        );
  logOut() {
    emit(state.copyWith(
      status: RequestStatus.success,
    ));
  }
}
