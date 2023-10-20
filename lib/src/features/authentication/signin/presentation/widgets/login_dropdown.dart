import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../src.dart';

class LoginDropdown extends StatelessWidget {
  const LoginDropdown({
    super.key,
    required this.formControlName,
    required this.hint,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
  });
  final String formControlName;
  final String hint;
  final String item1;
  final String item2;
  final String item3;
  final String item4;

  @override
  Widget build(BuildContext context) {
    return ReactiveDropdownField(
      formControlName: formControlName,
      hint: Text(
        hint,
      ),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyColor),
          borderRadius: BorderRadius.all(
            Radius.circular(
              Sizes.s16,
            ),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            Sizes.s16,
          ),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            Sizes.s16,
          ),
          borderSide: const BorderSide(
            color: AppColors.greyColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            Sizes.s16,
          ),
          borderSide: const BorderSide(color: AppColors.redColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            Sizes.s16,
          ),
          borderSide: const BorderSide(
            color: AppColors.redColor,
          ),
        ),
      ),
      items: [
        DropdownMenuItem<String>(
          value: AppStrings.kFinance,
          child: Text(
            item1,
          ),
        ),
        DropdownMenuItem<String>(
          value: AppStrings.kEmployee,
          child: Text(
            item2,
          ),
        ),
        DropdownMenuItem<String>(
          value: AppStrings.kManager,
          child: Text(
            item3,
          ),
        ),
        DropdownMenuItem<String>(
          value: AppStrings.kHr,
          child: Text(
            item4,
          ),
        ),
      ],
    );
  }
}
