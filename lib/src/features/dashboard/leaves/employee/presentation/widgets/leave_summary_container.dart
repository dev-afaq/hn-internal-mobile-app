import 'package:flutter/material.dart';

import '../../../../../../src.dart';

class LeaveSummaryContainer extends StatelessWidget {
  const LeaveSummaryContainer({
    super.key,
    required this.total,
    required this.available,
    required this.heading1,
    required this.heading2,
  });
  final String heading1;
  final String heading2;
  final String total;
  final String available;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightThemeColor[700],
        borderRadius: BorderRadius.circular(
          Sizes.s16,
        ),
      ),
      padding: const EdgeInsets.only(
        top: Sizes.s8,
        bottom: Sizes.s8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                heading1,
                style: const TextStyle(
                    fontSize: FontSizes.s14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor),
              ),
              const SizedBox(
                height: Sizes.s12,
              ),
              Text(
                total,
                style: const TextStyle(
                    fontSize: FontSizes.s14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor),
              ),
            ],
          ),
          Container(
            width: Sizes.s2,
            height: Sizes.s96,
            color: AppColors.whiteColor.withOpacity(
              0.5,
            ),
          ),
          Column(
            children: [
              Text(
                heading2,
                style: const TextStyle(
                    fontSize: FontSizes.s14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor),
              ),
              const SizedBox(
                height: Sizes.s12,
              ),
              Text(
                available,
                style: const TextStyle(
                  fontSize: FontSizes.s14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
