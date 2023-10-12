import 'package:flutter/material.dart';

import '../../../../../../src.dart';

class LeaveSummaryCard extends StatelessWidget {
  const LeaveSummaryCard({
    super.key,
    required this.hEmployeeName,
    required this.hApprovedBy,
    required this.hLeaveType,
    required this.hDuration,
    required this.employeeName,
    required this.approvedBy,
    required this.leaveType,
    required this.duration,
  });
  final String hEmployeeName;
  final String hApprovedBy;
  final String hLeaveType;
  final String hDuration;
  final String employeeName;
  final String approvedBy;
  final String leaveType;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Sizes.s4, // Adjust the elevation for the desired shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            Sizes.s24), // Adjust the border radius as needed
      ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    hApprovedBy,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: FontSizes.s16,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    approvedBy,
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
                    hLeaveType,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: FontSizes.s16,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    leaveType,
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
                    hDuration,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: FontSizes.s16,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    duration,
                    style: const TextStyle(
                      fontSize: FontSizes.s16,
                      fontWeight: FontWeight.w500,
                    ),
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
