import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class CustomBottomNavBarItem extends StatelessWidget {
  final bool isSelected;
  final String icnPath;

  const CustomBottomNavBarItem({
    super.key,
    required this.icnPath,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isSelected ? AppColors.secondryColor.withOpacity(0.6) : null,
      ),
      child: ImageIcon(
        AssetImage(icnPath),
      ),
    );
  }
}
