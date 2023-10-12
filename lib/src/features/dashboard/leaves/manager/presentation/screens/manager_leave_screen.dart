import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../src.dart';

class ManagerLeaveScreen extends StatelessWidget {
  const ManagerLeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManagerLeaveCubit, ManagerLeaveState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kManageLeaves,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
          ),
          body: ListView(
            padding: const EdgeInsets.only(
              left: Sizes.s16,
              right: Sizes.s16,
              bottom: Sizes.s16,
            ),
            children: [
              const SizedBox(
                height: Sizes.s32,
              ),
              const Center(
                child: CustomHeading(
                  heading: "Leaves Pending For Approval",
                ),
              ),
              Divider(
                color: AppColors.greyColor.withOpacity(
                  0.5,
                ),
                thickness: Sizes.s2,
                indent: Sizes.s20,
                endIndent: Sizes.s20,
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              const LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              const LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              const LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              const LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
              ),
            ],
          ),
        );
      },
    );
  }
}
