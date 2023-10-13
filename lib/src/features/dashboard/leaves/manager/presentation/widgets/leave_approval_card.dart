import 'package:flutter/material.dart';

import '../../../../../../src.dart';

class LeaveApprovalCard extends StatelessWidget {
  const LeaveApprovalCard({
    super.key,
    required this.hEmployeeName,
    required this.hReason,
    required this.hLeaveType,
    required this.hDuration,
    required this.employeeName,
    required this.reason,
    required this.leaveType,
    required this.duration,
    required this.approveBtnTxt,
    required this.rejectBtnTxt,
    this.approveOnPressed,
    this.rejectOnPressed,
  });
  final String hEmployeeName;
  final String hReason;
  final String hLeaveType;
  final String hDuration;
  final String employeeName;
  final String reason;
  final String leaveType;
  final String duration;
  final String approveBtnTxt;
  final String rejectBtnTxt;
  final Function()? approveOnPressed;
  final Function()? rejectOnPressed;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Card(
      elevation: Sizes.s8, // Adjust the elevation for the desired shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Sizes.s24,
        ), // Adjust the border radius as needed
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
            const SizedBox(
              height: Sizes.s12,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    label: rejectBtnTxt,
                    onPressed: rejectOnPressed,
                    isOutlined: true,
                  ),
                ),
                const SizedBox(
                  width: Sizes.s12,
                ),
                Expanded(
                  child: CustomElevatedButton(
                    label: approveBtnTxt,
                    onPressed: approveOnPressed,
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
