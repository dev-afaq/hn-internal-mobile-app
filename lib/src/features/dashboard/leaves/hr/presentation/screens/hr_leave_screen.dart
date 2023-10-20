import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../src.dart';

class HrLeaveScreen extends StatelessWidget {
  const HrLeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HrLeaveCubit, HrLeaveState>(
      builder: (context, state) {
        final cubit = context.read<HrLeaveCubit>();
        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kLeavesSummary,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
            actions: [
              PopupMenuButton<String>(
                icon: const Icon(
                  Icons.filter_list_alt,
                ),
                onSelected: (value) {
                  cubit.filterLeaveApplications(value);
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'daily',
                      child: Text(
                        'Today',
                      ),
                    ),
                    const PopupMenuItem<String>(
                      value: 'weekly',
                      child: Text(
                        'This Week',
                      ),
                    ),
                    const PopupMenuItem<String>(
                      value: 'monthly',
                      child: Text(
                        'This Month',
                      ),
                    ),
                  ];
                },
              ),
            ],
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
              Center(
                child: CustomHeading(
                  heading: (state.leaveSummary == "daily")
                      ? "Employees On Leave For Today"
                      : (state.leaveSummary == "monthly")
                          ? "Employees On Leave For This Month"
                          : (state.leaveSummary == "weekly")
                              ? "Employees On Leave For This Week"
                              : "Nothing to show",
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
              const LeaveSummaryCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hApprovedBy: AppStrings.kApprovedBy,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                approvedBy: "Manager's Name",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              const LeaveSummaryCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hApprovedBy: AppStrings.kApprovedBy,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                approvedBy: "Manager's Name",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              const LeaveSummaryCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hApprovedBy: AppStrings.kApprovedBy,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                approvedBy: "Manager's Name",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              const LeaveSummaryCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hApprovedBy: AppStrings.kApprovedBy,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                approvedBy: "Manager's Name",
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
