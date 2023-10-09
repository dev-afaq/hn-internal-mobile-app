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
              padding: const EdgeInsets.all(Sizes.s15),
              children: [
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
                        Text("From:"),
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
                        Text("to:"),
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
                      title: "Manager",
                    ),
                    CustomDropdown(
                      formControlName: "manager",
                      hint: "Select Manager",
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
                      label: "Submit Application",
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
