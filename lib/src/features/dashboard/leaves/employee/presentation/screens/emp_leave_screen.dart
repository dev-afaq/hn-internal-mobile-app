import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../src.dart';

class EmpLeaveScreen extends StatelessWidget {
  const EmpLeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmpLeaveCubit, EmpLeaveState>(
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
                const Column(
                  children: [
                    FieldTitle(
                      title: AppStrings.kTitle,
                    ),
                    CustomReactiveTextField(
                      formControlName: 'title',
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const Column(
                  children: [
                    FieldTitle(title: AppStrings.kDescription),
                    CustomReactiveTextField(
                      formControlName: 'description',
                      maxLines: 4,
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const Column(
                  children: [
                    FieldTitle(
                      title: AppStrings.kDuration,
                    ),
                    Row(
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
                    SizedBox(
                      height: Sizes.s12,
                    ),
                    FieldTitle(
                      title: AppStrings.kManager,
                    ),
                    CustomDropdown(
                      formControlName: "manager",
                      hint: AppStrings.kSelectManager,
                      item1: "item1",
                      item2: "item2",
                      item3: "item3",
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.s16,
                ),
                ReactiveFormConsumer(
                  builder: (_, formGroup, __) {
                    return CustomElevatedButton(
                      onPressed: () {},
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
