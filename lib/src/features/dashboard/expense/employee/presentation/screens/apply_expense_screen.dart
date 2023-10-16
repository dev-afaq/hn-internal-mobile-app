import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../src.dart';

class ApplyExpenseScreen extends StatelessWidget {
  const ApplyExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplyExpenseCubit, ApplyExpenseState>(
      builder: (
        context,
        state,
      ) {
        final cubit = context.read<ApplyExpenseCubit>();
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              AppStrings.kApplyReimbursement,
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
                  title: AppStrings.kDate,
                ),
                const SizedBox(
                  width: Sizes.s12,
                ),
                const CustomDatePicker(
                  formControl: 'date',
                  readOnly: false,
                ),
                const SizedBox(
                  height: Sizes.s12,
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
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            BottomSheetListTile(
                              icon: Icons.camera_alt,
                              label: AppStrings.kCamera,
                              onTap: () {},
                              color: AppColors.primaryColor,
                            ),
                            BottomSheetListTile(
                              icon: Icons.image,
                              label: AppStrings.kGallery,
                              onTap: () {},
                              color: AppColors.primaryColor,
                            ),
                            const Divider(
                              color: AppColors.greyColor,
                              height: 5,
                              thickness: 1,
                              indent: 50,
                              endIndent: 50,
                            ),
                            BottomSheetListTile(
                              icon: Icons.clear,
                              label: AppStrings.kCancel,
                              onTap: () {},
                              color: AppColors.redColor,
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text(AppStrings.kUploadPic),
                ),
                const SizedBox(
                  height: Sizes.s12,
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
