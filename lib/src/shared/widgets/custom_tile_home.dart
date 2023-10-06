import 'package:flutter/material.dart';

import '../../src.dart';

class CustomTileHome extends StatelessWidget {
  const CustomTileHome({
    super.key,
    required this.onTap,
    required this.title,
    required this.description,
  });
  final Function()? onTap;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: Sizes.s184,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                Sizes.s8,
              ),
              child: Image.asset(
                Assets.leaveIcon.name.png,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(
              height: Sizes.s12,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: FontSizes.s20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: Sizes.s8,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: FontSizes.s12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
