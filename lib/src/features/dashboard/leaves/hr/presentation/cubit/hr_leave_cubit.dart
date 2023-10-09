import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'hr_leave_state.dart';

class HrLeaveCubit extends Cubit<HrLeaveState> {
  HrLeaveCubit()
      : super(
          const HrLeaveState(),
        );
}
