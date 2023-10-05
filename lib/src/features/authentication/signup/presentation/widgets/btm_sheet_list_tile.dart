import 'package:flutter/material.dart';

import '../../../../../src.dart';

class BottomSheetListTile extends StatelessWidget {
  const BottomSheetListTile(
      {super.key,
      required this.icon,
      this.color,
      required this.label,
      this.onTap});
  final IconData icon;
  final Color? color;
  final String label;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: Sizes.s12,
            ),
            child: Icon(
              icon,
              color: color,
              size: Sizes.s32,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: FontSizes.s18,
              color: color,
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
