import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'hr_home_state.dart';

class HrHomeCubit extends Cubit<HrHomeState> {
  HrHomeCubit()
      : super(
          const HrHomeState(),
        );
}
