import 'package:flutter/material.dart';

import '../../src.dart';

class Helpers {
  Helpers._();
  static Future<void> showCustomDialog({
    required BuildContext context,
    required String title,
    String? contentText,
    String? contentBelow,
    String? buttonText,
    required VoidCallback onPressed,
  }) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          title: title,
          contentText: contentText ?? "",
          contentBelow: contentBelow ?? "",
          onPressed: onPressed,
          buttonText: buttonText ?? "",
        );
      },
    );
  }

  static Future<void> showPrompt(
      {required BuildContext context,
      required String title,
      required VoidCallback onYes,
      required VoidCallback onNo,
      required IconData icon,
      required String iconLabel,
      required VoidCallback onTapIcon}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomPrompt(
          onTapIcon: onTapIcon,
          title: title,
          onYes: onYes,
          onNo: onNo,
          icon: icon,
          iconLabel: iconLabel,
        );
      },
    );
  }

  static Future<void> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required VoidCallback onYes,
    required VoidCallback onNo,
  }) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomConfirmationDialog(
          title: title,
          onYes: onYes,
          onNo: onNo,
        );
      },
    );
  }
}
