import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.sebhaBackground,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
