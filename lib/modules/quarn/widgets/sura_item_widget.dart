import 'package:flutter/material.dart';
import 'package:islami_app_c13_mon_7pm/core/theme/app_colors.dart';
import 'package:islami_app_c13_mon_7pm/models/sura_data_model.dart';

class SuraItemWidget extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const SuraItemWidget({
    super.key,
    required this.suraDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/icons/sura_number_icn.png",
              height: 50,
              width: 50,
            ),
            Text(
              suraDataModel.id,
              style: const TextStyle(
                  fontFamily: "Janna",
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white),
            )
          ],
        ),
        const SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              suraDataModel.suraNameEN,
              style: const TextStyle(
                fontFamily: "Janna",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
            Text(
              "${suraDataModel.suraVersesNumber} Verses",
              style: const TextStyle(
                fontFamily: "Janna",
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            )
          ],
        ),
        const Spacer(),
        Text(
          suraDataModel.suraNameAR,
          style: const TextStyle(
            fontFamily: "Janna",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
