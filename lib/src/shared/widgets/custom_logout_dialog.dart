import 'package:flutter/material.dart';

import '../../src.dart';

class CustomConfirmationDialog extends StatelessWidget {
  const CustomConfirmationDialog({
    super.key,
    required this.title,
    this.onYes,
    this.onNo,
  });
  final String title;
  final Function()? onYes;
  final Function()? onNo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.primaryColor,
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.only(
          top: Sizes.s20,
        ),
        child: Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                label: AppStrings.kYes,
                onPressed: onYes,
              ),
            ),
            const SizedBox(
              width: Sizes.s16,
            ),
            Expanded(
              child: CustomElevatedButton(
                label: AppStrings.kNo,
                onPressed: onNo,
                isOutlined: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
