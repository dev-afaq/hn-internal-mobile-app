import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../src.dart';

class EmpLeaveScreen extends StatelessWidget {
  const EmpLeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmpLeaveCubit, EmpLeaveState>(
      listener: (context, state) {
        switch (state.status) {
          case RequestStatus.success:
            Navigator.pushNamed(
              context,
              Routes.empHomeScreen,
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
        final cubit = context.read<EmpLeaveCubit>();
        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kApplyLeave,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
          ),
          body: ReactiveForm(
            formGroup: cubit.leaveForm,
            child: ListView(
              padding: const EdgeInsets.all(
                Sizes.s20,
              ),
              children: [
                const CustomHeading(
                  heading: AppStrings.kLeavesSummary,
                ),
                const SizedBox(
                  height: Sizes.s16,
                ),
                const LeaveSummaryContainer(
                  total: "12",
                  available: "12",
                  heading1: AppStrings.kTotalLeaves,
                  heading2: AppStrings.kAvailableLeaves,
                ),
                const SizedBox(
                  height: Sizes.s16,
                ),
                Divider(
                  color: AppColors.greyColor.withOpacity(
                    0.5,
                  ),
                  indent: Sizes.s16,
                  endIndent: Sizes.s16,
                ),
                const SizedBox(
                  height: Sizes.s16,
                ),
                const Center(
                  child: CustomHeading(
                    heading: AppStrings.kApplyLeaveHere,
                  ),
                ),
                const SizedBox(
                  height: Sizes.s20,
                ),
                const FieldTitle(
                  title: AppStrings.kTitle,
                ),
                const CustomReactiveTextField(
                  formControlName: 'title',
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const FieldTitle(title: AppStrings.kDescription),
                const CustomReactiveTextField(
                  formControlName: 'description',
                  maxLines: 4,
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const FieldTitle(
                  title: AppStrings.kDuration,
                ),
                const Row(
                  children: [
                    Text(
                      AppStrings.kFrom,
                    ),
                    SizedBox(
                      width: Sizes.s12,
                    ),
                    Expanded(
                      child: CustomDatePicker(
                        formControl: 'from_date',
                        readOnly: false,
                      ),
                    ),
                    SizedBox(
                      width: Sizes.s12,
                    ),
                    Text(
                      AppStrings.kTo,
                    ),
                    SizedBox(
                      width: Sizes.s12,
                    ),
                    Expanded(
                      child: CustomDatePicker(
                        formControl: 'to_date',
                        readOnly: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const FieldTitle(
                  title: AppStrings.kLeaveType,
                ),
                const CustomDropdown(
                  formControlName: "leave_type",
                  hint: AppStrings.kLeaveType,
                  item1: "Medical",
                  item2: "Casual",
                  item3: "Work From Home",
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const FieldTitle(
                  title: AppStrings.kManager,
                ),
                const CustomDropdown(
                  formControlName: "manager",
                  hint: AppStrings.kSelectManager,
                  item1: "item1",
                  item2: "item2",
                  item3: "item3",
                ),
                const SizedBox(
                  height: Sizes.s20,
                ),
                ReactiveFormConsumer(
                  builder: (_, formGroup, __) {
                    return CustomElevatedButton(
                      onPressed: () {
                        if (cubit.leaveForm.valid) {
                          Helpers.showConfirmationDialog(
                            context: context,
                            title: AppStrings.kSure,
                            onYes: () {
                              cubit.submit();
                            },
                            onNo: () {
                              Navigator.pop(context);
                            },
                          );
                        } else {
                          cubit.leaveForm.markAllAsTouched();
                        }
                      },
                      label: AppStrings.kSubmitApplication,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
