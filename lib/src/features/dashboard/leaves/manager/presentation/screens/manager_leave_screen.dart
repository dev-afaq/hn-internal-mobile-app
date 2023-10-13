import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../src.dart';

class ManagerLeaveScreen extends StatelessWidget {
  const ManagerLeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManagerLeaveCubit, ManagerLeaveState>(
      builder: (context, state) {
        final cubit = context.read<ManagerLeaveCubit>();

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
                  heading: AppStrings.kPendingApproval,
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
              LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
                approveBtnTxt: AppStrings.kApprove,
                rejectBtnTxt: AppStrings.kReject,
                approveOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Approve Leave",
                          formControlName: "remarks",
                          onCancel: () {
                            Navigator.of(context).pop();
                          },
                          onOk: () {},
                        ),
                      );
                    },
                  );
                },
                rejectOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Reject Leave",
                          formControlName: "remarks",
                          onCancel: () {
                            Navigator.of(context).pop();
                          },
                          onOk: () {},
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
                approveBtnTxt: AppStrings.kApprove,
                rejectBtnTxt: AppStrings.kReject,
                approveOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Approve Leave",
                          formControlName: "remarks",
                          onCancel: () {
                            Navigator.of(context).pop();
                          },
                          onOk: () {},
                        ),
                      );
                    },
                  );
                },
                rejectOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Reject Leave",
                          formControlName: "remarks",
                          onCancel: () {
                            Navigator.of(context).pop();
                          },
                          onOk: () {},
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
                approveBtnTxt: AppStrings.kApprove,
                rejectBtnTxt: AppStrings.kReject,
                approveOnPressed: () {},
                rejectOnPressed: () {},
              ),
              const SizedBox(
                height: Sizes.s16,
              ),
              LeaveApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hLeaveType: AppStrings.kLeaveType,
                hDuration: AppStrings.kDuration,
                employeeName: AppStrings.kMyName,
                reason: "Reason for leave",
                leaveType: "Medical/Casual/WFH",
                duration: "duration",
                approveBtnTxt: AppStrings.kApprove,
                rejectBtnTxt: AppStrings.kReject,
                approveOnPressed: () {},
                rejectOnPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
