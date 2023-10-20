import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../src.dart';

class FinanceExpenseScreen extends StatelessWidget {
  const FinanceExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinanceExpenseCubit, FinanceExpenseState>(
      builder: (context, state) {
        final cubit = context.read<FinanceExpenseCubit>();

        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kManageReimbursement,
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
                  heading: AppStrings.kExpensePendingApproval,
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
              FinanceApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hCategory: AppStrings.kCategory,
                hDate: AppStrings.kDate,
                employeeName: AppStrings.kMyName,
                reason: "Reason for Reimbursement",
                category: "Meeting/Food/Late Night/Travel",
                date: "date",
                approveBtnTxt: AppStrings.kApprove,
                approveOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Approve & Release",
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
              FinanceApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hCategory: AppStrings.kCategory,
                hDate: AppStrings.kDate,
                employeeName: AppStrings.kMyName,
                reason: "Reason for Reimbursement",
                category: "Meeting/Food/Late Night/Travel",
                date: "date",
                approveBtnTxt: AppStrings.kApprove,
                approveOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Approve & Release",
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
              FinanceApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hCategory: AppStrings.kCategory,
                hDate: AppStrings.kDate,
                employeeName: AppStrings.kMyName,
                reason: "Reason for Reimbursement",
                category: "Meeting/Food/Late Night/Travel",
                date: "date",
                approveBtnTxt: AppStrings.kApprove,
                approveOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Approve & Release",
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
              FinanceApprovalCard(
                hEmployeeName: AppStrings.kEmployeeName,
                hReason: AppStrings.kReason,
                hCategory: AppStrings.kCategory,
                hDate: AppStrings.kDate,
                employeeName: AppStrings.kMyName,
                reason: "Reason for Reimbursement",
                category: "Meeting/Food/Late Night/Travel",
                date: "date",
                approveBtnTxt: AppStrings.kApprove,
                approveOnPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReactiveForm(
                        formGroup: cubit.remarksForm,
                        child: ApproveRejectDialog(
                          title: "Approve & Release",
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
            ],
          ),
        );
      },
    );
  }
}
