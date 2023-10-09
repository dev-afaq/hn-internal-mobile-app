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

  static Future<void> showLogoutDialog({
    required BuildContext context,
    required String title,
    required VoidCallback onLogout,
    required VoidCallback onNo,
  }) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomLogoutDialog(
          title: title,
          onLogout: onLogout,
          onNo: onNo,
        );
      },
    );
  }
}
