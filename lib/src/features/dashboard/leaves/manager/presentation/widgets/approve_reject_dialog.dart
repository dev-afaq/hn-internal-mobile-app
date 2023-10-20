import 'package:flutter/material.dart';

import '../../../../../../src.dart';

class ApproveRejectDialog extends StatelessWidget {
  const ApproveRejectDialog({
    super.key,
    required this.title,
    this.onOk,
    this.onCancel,
    required this.formControlName,
  });
  final String title;
  final Function()? onOk;
  final Function()? onCancel;
  final String formControlName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(
          Sizes.s24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.s18,
              ),
            ),
            const SizedBox(
              height: Sizes.s16,
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: CustomReactiveTextField(
                formControlName: formControlName,
                hintText: "Add Remarks",
                maxLines: 3,
              ),
            ),
            const SizedBox(
              height: Sizes.s16,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    label: AppStrings.kCancel,
                    onPressed: onCancel,
                    isOutlined: true,
                  ),
                ),
                const SizedBox(
                  width: Sizes.s16,
                ),
                Expanded(
                  child: CustomElevatedButton(
                    label: AppStrings.kOk,
                    onPressed: onOk,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
