import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../src.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.formControlName,
    this.onChanged,
  });
  final String formControlName;
  final Function(FormControl)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ReactiveCheckbox(
      formControlName: formControlName,
      visualDensity: const VisualDensity(
        horizontal: -Sizes.s4,
        vertical: -Sizes.s4,
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onChanged: onChanged,
    );
  }
}
