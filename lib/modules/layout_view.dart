import 'package:flutter/material.dart';
import 'package:islami_app_c13_mon_7pm/modules/hadith/hadith_view.dart';
import 'package:islami_app_c13_mon_7pm/modules/quarn/quran_view.dart';
import 'package:islami_app_c13_mon_7pm/modules/radio/radio_view.dart';
import 'package:islami_app_c13_mon_7pm/modules/sebha/sebha_view.dart';
import 'package:islami_app_c13_mon_7pm/modules/times/times_view.dart';

import '/core/constants/app_assets.dart';
import '/core/theme/app_colors.dart';
import '/modules/widgets/custom_bottom_nav_bar_item.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    TimesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
          color: AppColors.white,
        ),
        unselectedIconTheme: const IconThemeData(
          color: AppColors.secondryColor,
        ),
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.secondryColor,
        showUnselectedLabels: false,
        items: [
          // index --> 0
          BottomNavigationBarItem(
            icon: CustomBottomNavBarItem(
              icnPath: AppAssets.quranIcn,
              isSelected: selectedIndex == 0,
            ),
            label: "Quran",
          ),
          // index --> 1
          BottomNavigationBarItem(
            icon: CustomBottomNavBarItem(
              icnPath: AppAssets.hadithIcn,
              isSelected: selectedIndex == 1,
            ),
            label: "Hadith",
          ),
          // index --> 2
          BottomNavigationBarItem(
            icon: CustomBottomNavBarItem(
              icnPath: AppAssets.sebhaIcn,
              isSelected: selectedIndex == 2,
            ),
            label: "Sebha",
          ),
          // index --> 3
          BottomNavigationBarItem(
            icon: CustomBottomNavBarItem(
              icnPath: AppAssets.radioIcn,
              isSelected: selectedIndex == 3,
            ),
            label: "Radio",
          ),
          // index --> 4
          BottomNavigationBarItem(
            icon: CustomBottomNavBarItem(
              icnPath: AppAssets.timesIcn,
              isSelected: selectedIndex == 4,
            ),
            label: "Times",
          ),
        ],
      ),
    );
  }
}
