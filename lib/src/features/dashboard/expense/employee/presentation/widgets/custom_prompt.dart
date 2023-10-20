import 'package:flutter/material.dart';

import '../../../../../../src.dart';

class CustomPrompt extends StatelessWidget {
  const CustomPrompt({
    super.key,
    required this.title,
    this.onYes,
    this.onNo,
    required this.icon,
    required this.iconLabel, this.onTapIcon,
  });
  final String title;
  final Function()? onYes;
  final Function()? onNo;
  final IconData icon;
  final String iconLabel;
  final Function()? onTapIcon;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      AppColors.lightThemeColor[200],
                    ),
                    elevation: const MaterialStatePropertyAll(
                      Sizes.s2,
                    ),
                    shadowColor: const MaterialStatePropertyAll(
                      AppColors.greyColor,
                    ),
                  ),
                  onPressed: onTapIcon,
                  icon: Icon(
                    icon,
                    color: AppColors.primaryColor,
                  ),
                ),
                Text(
                  iconLabel,
                  style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: FontSizes.s16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.s16,
            ),
            Row(
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
          ],
        ),
      ),
    );
  }
}
