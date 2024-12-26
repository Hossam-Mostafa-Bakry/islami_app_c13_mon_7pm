import 'package:flutter/material.dart';
import 'package:islami_app_c13_mon_7pm/core/constants/app_assets.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.quranBackground,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
