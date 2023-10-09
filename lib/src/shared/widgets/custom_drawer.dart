import 'package:flutter/material.dart';

import '../../src.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.onTapLogOut,
    required this.onTapProfile,
  });
  final Function()? onTapLogOut;
  final Function()? onTapProfile;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: Sizes.s40,
              bottom: Sizes.s16,
            ),
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  Sizes.s24,
                ),
                bottomRight: Radius.circular(
                  Sizes.s24,
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    Sizes.s12,
                  ),
                  child: SizedBox(
                    height: Sizes.s64,
                    width: Sizes.s64,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        Assets.appLogo.name.png,
                      ),
                    ),
                  ),
                ),
                const Text(
                  AppStrings.kAppTitleDrawer,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSizes.s16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(
              top: Sizes.s16,
              left: Sizes.s16,
            ),
            iconColor: AppColors.primaryColor,
            title: const Text(
              AppStrings.kViewProfile,
            ),
            leading: const Icon(
              Icons.person,
            ),
            onTap: onTapProfile,
          ),
          const SizedBox(
            height: Sizes.s500,
          ),
          const Divider(
            indent: Sizes.s20,
            endIndent: Sizes.s20,
          ),
          ListTile(
            iconColor: AppColors.primaryColor,
            contentPadding: const EdgeInsets.only(
              left: Sizes.s16,
            ),
            title: const Text(
              AppStrings.kLogOut,
            ),
            leading: const Icon(
              Icons.logout,
            ),
            onTap: onTapLogOut,
          ),
        ],
      ),
    );
  }
}
