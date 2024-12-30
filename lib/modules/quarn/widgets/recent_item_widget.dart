import 'package:flutter/material.dart';
import 'package:islami_app_c13_mon_7pm/core/constants/app_assets.dart';
import 'package:islami_app_c13_mon_7pm/core/theme/app_colors.dart';
import 'package:islami_app_c13_mon_7pm/models/sura_data_model.dart';

class RecentItemWidget extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const RecentItemWidget({
    super.key,
    required this.suraDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                suraDataModel.suraNameAR,
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${suraDataModel.suraVersesNumber} Verses",
                style: TextStyle(
                  fontFamily: "Janna",
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Image.asset(
            AppAssets.recentImg,
          ),
        ],
      ),
    );
  }
}
