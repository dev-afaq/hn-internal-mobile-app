import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../src.dart';

class FinanceHomeScreen extends StatelessWidget {
  const FinanceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FinanceHomeCubit, FinanceHomeState>(
      listener: (context, state) {
        switch (state.status) {
          case RequestStatus.success:
            Navigator.pushNamed(
              context,
              Routes.signIn,
            );
            break;
          case RequestStatus.failure:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        final cubit = context.read<FinanceHomeCubit>();
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
              Helpers.showConfirmationDialog(
                context: context,
                title: AppStrings.kLogoutDialog,
                onYes: () {
                  cubit.logOut();
                },
                onNo: () {
                  Navigator.pop(context);
                },
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
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.financeExpenseScreen,
                      );
                    },
                    title: AppStrings.kManageReimbursement,
                    description: AppStrings.kManageReimbursementDesc,
                    icon: Assets.expenseIcon.name.png,
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
