import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../src.dart';

class EmpExpenseScreen extends StatelessWidget {
  const EmpExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmpExpenseCubit, EmpExpenseState>(
      builder: (context, state) {
        final cubit = context.read<EmpExpenseCubit>();
        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kTrackReimbursement,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
          ),
          floatingActionButton: CustomElevatedButton(
            label: AppStrings.kToolTip,
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.applyExpenseScreen,
              );
            },
          ),
          body: ListView(
            padding: const EdgeInsets.all(
              Sizes.s12,
            ),
            children: [
              CustomListTile(
                title: "Title",
                description: "Description",
                status: "Status",
                onTap: () {},
                onLongPress: () {},
              ),
              CustomListTile(
                title: "Title",
                description: "Description",
                status: "Status",
                onTap: () {},
                onLongPress: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
