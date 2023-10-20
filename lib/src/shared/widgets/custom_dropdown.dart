import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../src.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.formControlName,
    required this.hint,
    required this.item1,
    required this.item2,
    required this.item3,
  });
  final String formControlName;
  final String hint;
  final String item1;
  final String item2;
  final String item3;

  @override
  Widget build(BuildContext context) {
    return ReactiveDropdownField(
      formControlName: formControlName,
      hint: Text(
        hint,
      ),
      dropdownColor: AppColors.lightThemeColor[300],
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
        DropdownMenuItem(
          value: 0,
          child: Text(
            item1,
          ),
        ),
        DropdownMenuItem(
          value: 1,
          child: Text(
            item2,
          ),
        ),
        DropdownMenuItem(
          value: 2,
          child: Text(
            item3,
          ),
        ),
      ],
    );
  }
}
