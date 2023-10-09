import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'manager_leave_state.dart';

class ManagerLeaveCubit extends Cubit<ManagerLeaveState> {
  ManagerLeaveCubit()
      : super(
          const ManagerLeaveState(),
        );
}
