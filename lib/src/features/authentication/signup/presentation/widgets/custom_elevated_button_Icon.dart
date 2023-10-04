import 'package:flutter/material.dart';

import '../../../../../src.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  const CustomElevatedButtonIcon(
      {super.key, this.onPressed, required this.label, required this.icon});
  final Function()? onPressed;
  final String label;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(label),
      icon: icon,
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(
          Size.fromHeight(48),
        ),
        foregroundColor: const MaterialStatePropertyAll(AppColors.primaryColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(20),
        ),
      ),
    );
  }
}
