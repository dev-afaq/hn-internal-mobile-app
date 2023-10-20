import 'package:flutter/material.dart';

import '../../src.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.onTap,
    this.onLongPress,
    required this.title,
    required this.description,
    required this.status,
  });
  final Function()? onTap;
  final Function()? onLongPress;
  final String title;
  final String description;
  final String status;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        margin: const EdgeInsets.all(
          Sizes.s4,
        ),
        padding: const EdgeInsets.all(
          Sizes.s8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Sizes.s16,
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AppColors.primaryColor.withOpacity(
                0.5,
              ),
              AppColors.lightThemeColor.withOpacity(
                0.2,
              ),
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(
                  Sizes.s8,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: FontSizes.s16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: Sizes.s8,
                      ),
                      Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: Sizes.s12,
                      ),
                      Text(
                        status,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: FontSizes.s14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              "Date",
            ),
          ],
        ),
      ),
    );
  }
}
