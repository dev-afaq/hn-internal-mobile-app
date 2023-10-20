import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../../src.dart';

part 'hr_home_state.dart';

class HrHomeCubit extends Cubit<HrHomeState> {
  HrHomeCubit()
      : super(
          const HrHomeState(),
        );
  logOut() {
    emit(state.copyWith(
      status: RequestStatus.success,
    ));
  }
}
