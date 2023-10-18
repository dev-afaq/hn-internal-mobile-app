import 'package:flutter/material.dart';

import '../../../../../../src.dart';

class FinanceApprovalCard extends StatelessWidget {
  const FinanceApprovalCard({
    super.key,
    required this.hEmployeeName,
    required this.hReason,
    required this.hCategory,
    required this.hDate,
    required this.employeeName,
    required this.reason,
    required this.category,
    required this.date,
    required this.approveBtnTxt,
    this.approveOnPressed,
  });
  final String hEmployeeName;
  final String hReason;
  final String hCategory;
  final String hDate;
  final String employeeName;
  final String reason;
  final String category;
  final String date;
  final String approveBtnTxt;
  final Function()? approveOnPressed;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Card(
      elevation: Sizes.s8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Sizes.s24,
        ),
      ),
      shadowColor: AppColors.greyColor,
      child: Container(
        padding: const EdgeInsets.all(
          Sizes.s12,
        ),
        decoration: BoxDecoration(
          color: AppColors.lightThemeColor[500],
          borderRadius: BorderRadius.circular(
            Sizes.s24,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    hEmployeeName,
                    style: const TextStyle(
                      fontSize: FontSizes.s16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    employeeName,
                    style: const TextStyle(
                      fontSize: FontSizes.s16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.s12,
            ),
            Divider(
              color: AppColors.whiteColor.withOpacity(
                0.5,
              ),
              indent: Sizes.s16,
              endIndent: Sizes.s16,
            ),
            const SizedBox(
              height: Sizes.s12,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    hReason,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: FontSizes.s16,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    reason,
                    style: const TextStyle(
                      fontSize: FontSizes.s16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.s12,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    hCategory,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: FontSizes.s16,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    category,
                    style: const TextStyle(
                      fontSize: FontSizes.s16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.s12,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    hDate,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: FontSizes.s16,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    date,
                    style: const TextStyle(
                      fontSize: FontSizes.s16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.s16,
            ),
            SizedBox(
              width: Sizes.s324,
              child: CustomElevatedButton(
                label: approveBtnTxt,
                onPressed: approveOnPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}