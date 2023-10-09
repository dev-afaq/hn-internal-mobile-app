import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../src.dart';

class FinanceHomeScreen extends StatelessWidget {
  const FinanceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinanceHomeCubit, FinanceHomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kCompanyName,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add_rounded,
                ),
              ),
            ],
          ),
          drawer: CustomDrawer(
            onTapLogOut: () {
              Helpers.showLogoutDialog(
                context: context,
                title: AppStrings.kLogoutDialog,
                onLogout: () {},
                onNo: () {},
              );
            },
            onTapProfile: () {},
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: Sizes.s20,
              right: Sizes.s20,
              top: Sizes.s32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppStrings.kHi,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                    fontSize: FontSizes.s18,
                  ),
                ),
                const SizedBox(
                  height: Sizes.s16,
                ),
                const Text(
                  AppStrings.kMyName,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor,
                    fontSize: FontSizes.s24,
                  ),
                ),
                const SizedBox(
                  height: Sizes.s64,
                ),
                Center(
                  child: CustomTileHome(
                    onTap: () {},
                    title: AppStrings.kManageReimbursement,
                    description: AppStrings.kManageReimbursementDesc,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
