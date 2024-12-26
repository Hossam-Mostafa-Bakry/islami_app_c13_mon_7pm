import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class TimesView extends StatelessWidget {
  const TimesView({super.key});

  // git & github

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.timesBackground,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
