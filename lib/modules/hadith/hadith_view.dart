import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.hadithBackground,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
