import 'package:flutter/material.dart';
import '../../src.dart';
class PictureBottomSheet extends StatelessWidget {
  const PictureBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BottomSheetListTile(
          icon: Icons.camera_alt,
          label: AppStrings.kCamera,
          onTap: () {},
          color: AppColors.primaryColor,
        ),
        BottomSheetListTile(
          icon: Icons.image,
          label: AppStrings.kGallery,
          onTap: () {},
          color: AppColors.primaryColor,
        ),
        Divider(
          color: AppColors.greyColor.withOpacity(
            0.5,
          ),
          height: Sizes.s4,
          thickness: 1,
          indent: Sizes.s48,
          endIndent: Sizes.s48,
        ),
        BottomSheetListTile(
          icon: Icons.clear,
          label: AppStrings.kCancel,
          onTap: () {},
          color: AppColors.redColor,
        ),
      ],
    );
  }
}
