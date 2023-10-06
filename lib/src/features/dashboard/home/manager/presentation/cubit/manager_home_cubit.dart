import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'manager_home_state.dart';

class ManagerHomeCubit extends Cubit<ManagerHomeState> {
  ManagerHomeCubit()
      : super(
          const ManagerHomeState(),
        );
}
