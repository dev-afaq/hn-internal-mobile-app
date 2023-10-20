import 'package:flutter/material.dart';

import '../../src.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.contentText,
    required this.contentBelow,
    required this.buttonText,
    this.onPressed,
  });
  final String title;
  final String contentText;
  final String contentBelow;
  final String buttonText;
  final Function()? onPressed;

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
      content: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: Sizes.s136,
        ),
        child: Column(
          children: [
            Text(
              contentText,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: FontSizes.s16,
              ),
            ),
            Text(
              contentBelow,
              style: const TextStyle(
                fontSize: FontSizes.s16,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: Sizes.s20,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                label: buttonText,
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
