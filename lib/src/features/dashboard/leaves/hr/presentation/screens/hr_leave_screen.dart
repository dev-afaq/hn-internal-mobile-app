import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../src.dart';

class HrLeaveScreen extends StatelessWidget {
  const HrLeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HrLeaveCubit, HrLeaveState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kLeavesSummary,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
          ),
          body: ListView(
            children: [
              Container(),
            ],
          ),
        );
      },
    );
  }
}
