import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../src.dart';

class ApplyExpenseScreen extends StatelessWidget {
  const ApplyExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApplyExpenseCubit, ApplyExpenseState>(
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
      builder: (
        context,
        state,
      ) {
        final cubit = context.read<ApplyExpenseCubit>();
        return Scaffold(
          backgroundColor: AppColors.lightThemeColor[100],
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kExpenseReimbursement,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
          ),
          body: ReactiveForm(
            formGroup: cubit.expenseForm,
            child: ListView(
              padding: const EdgeInsets.only(
                left: Sizes.s32,
                right: Sizes.s32,
              ),
              children: [
                const SizedBox(
                  height: Sizes.s20,
                ),
                const Center(
                  child: CustomHeading(
                    heading: AppStrings.kApplyReimbursement,
                  ),
                ),
                const SizedBox(
                  height: Sizes.s24,
                ),
                const FieldTitle(
                  title: AppStrings.kTitle,
                ),
                const CustomReactiveTextField(
                  formControlName: 'title',
                ),
                const SizedBox(
                  height: Sizes.s20,
                ),
                const FieldTitle(
                  title: AppStrings.kDescription,
                ),
                const CustomReactiveTextField(
                  formControlName: 'description',
                  maxLines: 4,
                ),
                const SizedBox(
                  height: Sizes.s20,
                ),
                const FieldTitle(
                  title: AppStrings.kDate,
                ),
                const CustomDatePicker(
                  formControl: 'date',
                  readOnly: false,
                ),
                const SizedBox(
                  height: Sizes.s20,
                ),
                const FieldTitle(
                  title: AppStrings.kCategory,
                ),
                const Row(
                  children: [
                    CustomCheckBox(
                      formControlName: "food",
                    ),
                    SizedBox(
                      width: Sizes.s20,
                    ),
                    Text(
                      AppStrings.kFood,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.s14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const Row(
                  children: [
                    CustomCheckBox(
                      formControlName: "meeting",
                    ),
                    SizedBox(
                      width: Sizes.s20,
                    ),
                    Text(
                      AppStrings.kMeeting,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.s14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const Row(
                  children: [
                    CustomCheckBox(
                      formControlName: "late_night",
                    ),
                    SizedBox(
                      width: Sizes.s20,
                    ),
                    Text(
                      AppStrings.kLateNight,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.s14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: Sizes.s12,
                ),
                const Row(
                  children: [
                    CustomCheckBox(
                      formControlName: "travel",
                    ),
                    SizedBox(
                      width: Sizes.s20,
                    ),
                    Text(
                      AppStrings.kTravel,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.s14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: Sizes.s20,
                ),
                const FieldTitle(
                  title: AppStrings.kAttachReceipt,
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      AppColors.lightThemeColor[300],
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const PictureBottomSheet();
                      },
                    );
                  },
                  child: const Text(AppStrings.kUploadPic),
                ),
                const SizedBox(
                  height: Sizes.s32,
                ),
                const Row(
                  children: [
                    CustomCheckBox(
                      formControlName: "completed",
                    ),
                    SizedBox(
                      width: Sizes.s20,
                    ),
                    Text(
                      AppStrings.kCompleted,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.s16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.s32,
                ),
                ReactiveFormConsumer(
                  builder: (_, formGroup, __) {
                    return CustomElevatedButton(
                      onPressed: () {
                        if (cubit.expenseForm.valid) {
                          Helpers.showPrompt(
                            context: context,
                            onTapIcon: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return const PictureBottomSheet();
                                },
                              );
                            },
                            title: AppStrings.kCompanyPolicyPrompt,
                            onYes: () {
                              cubit.submit();
                            },
                            onNo: () {
                              Navigator.pop(context);
                            },
                            icon: Icons.attach_email,
                            iconLabel: AppStrings.kManagerEmailApp,
                          );
                        } else {
                          cubit.expenseForm.markAllAsTouched();
                        }
                      },
                      label: AppStrings.kSubmitApplication,
                    );
                  },
                ),
                const SizedBox(
                  height: Sizes.s24,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
