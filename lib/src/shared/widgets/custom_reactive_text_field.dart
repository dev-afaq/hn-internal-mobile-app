import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../src.dart';

class CustomReactiveTextField extends StatelessWidget {
  const CustomReactiveTextField({
    super.key,
    required this.formControlName,
    this.maxLines = 1,
    this.readOnly = false,
    this.onTap,
    this.valueAccessor,
    this.hintText = "",
    this.keyboardType,
  });

  final TextInputType? keyboardType;
  final bool readOnly;
  final Function(FormControl)? onTap;
  final ControlValueAccessor<String, String>? valueAccessor;
  final String formControlName;
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.s5),
      child: ReactiveTextField(
        cursorColor: AppColors.primaryColor,
        formControlName: formControlName,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyColor),
            borderRadius: BorderRadius.all(
              Radius.circular(Sizes.s32),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.s32),
            borderSide: BorderSide(
              color: readOnly ? AppColors.greyColor : AppColors.primaryColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.s32),
            borderSide: const BorderSide(
              color: AppColors.greyColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.s32),
            borderSide: const BorderSide(color: AppColors.redColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.s32),
            borderSide: const BorderSide(color: AppColors.redColor),
          ),
          suffixIcon: (formControlName == 'date')
              ? const Icon(Icons.calendar_month)
              : null,
          hintText: hintText,
        ),
        maxLines: maxLines,
        readOnly: readOnly,
        onTap: onTap,
        valueAccessor: valueAccessor,
      ),
    );
  }
}
