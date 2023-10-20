import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../src.dart';

class CustomDatePicker extends StatelessWidget {
  final String formControl;
  final bool readOnly;
  const CustomDatePicker({
    super.key,
    required this.formControl,
    required this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveDatePicker(
      formControlName: formControl,
      builder: (BuildContext context,
          ReactiveDatePickerDelegate<dynamic> picker, Widget? child) {
        return CustomReactiveTextField(
          suffixIcon: const Icon(
            Icons.calendar_month,
            color: AppColors.primaryColor,
          ),
          formControlName: formControl,
          readOnly: true,
          valueAccessor: CustomDateTimeValueAccessor(
            dateTimeFormat: DateFormat("MMMM dd, yyyy"),
          ),
          onTap: (readOnly == false)
              ? (control) {
                  picker.showPicker();
                }
              : null,
        );
      },
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
  }
}

class CustomDateTimeValueAccessor extends ControlValueAccessor<String, String> {
  final DateFormat dateTimeFormat;

  CustomDateTimeValueAccessor({DateFormat? dateTimeFormat})
      : dateTimeFormat = dateTimeFormat ??
            DateFormat(
              'yyyy-MM-dd',
            );

  @override
  String modelToViewValue(String? modelValue) {
    return modelValue == null || modelValue == ''
        ? ''
        : dateTimeFormat.format(
            DateTime.parse(
              modelValue,
            ),
          );
  }

  @override
  String? viewToModelValue(String? viewValue) {
    return viewValue == null || viewValue.trim().isEmpty ? null : viewValue;
  }
}
