import 'package:flutter/material.dart';
import 'package:islami_app_c13_mon_7pm/core/constants/app_assets.dart';
import 'package:islami_app_c13_mon_7pm/core/theme/app_colors.dart';
import 'package:islami_app_c13_mon_7pm/models/sura_data_model.dart';
import 'package:islami_app_c13_mon_7pm/modules/quarn/quran_details_view.dart';
import 'package:islami_app_c13_mon_7pm/modules/quarn/widgets/recent_item_widget.dart';
import 'package:islami_app_c13_mon_7pm/modules/quarn/widgets/sura_item_widget.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  // Shared Preferences
  List<SuraDataModel> recentDataList = [
    SuraDataModel(
        id: "1",
        suraNameEN: "Al-Fatiha",
        suraNameAR: "الفاتحه",
        suraVersesNumber: "7"),
    SuraDataModel(
        id: "3",
        suraNameEN: "Aal-E-Imran",
        suraNameAR: "آل عمران",
        suraVersesNumber: "200"),
  ];

  List<SuraDataModel> suraList = [
    SuraDataModel(
        id: "1",
        suraNameEN: "Al-Fatihah",
        suraNameAR: "الفاتحه",
        suraVersesNumber: "7"),
    SuraDataModel(
        id: "2",
        suraNameEN: "Al-Baqarah",
        suraNameAR: "البقرة",
        suraVersesNumber: "286"),
    SuraDataModel(
        id: "3",
        suraNameEN: "Aal-E-Imran",
        suraNameAR: "آل عمران",
        suraVersesNumber: "200"),
    SuraDataModel(
        id: "4",
        suraNameEN: "An-Nisa",
        suraNameAR: "النساء",
        suraVersesNumber: "176"),
    SuraDataModel(
        id: "5",
        suraNameEN: "Al-Maidah",
        suraNameAR: "المائدة",
        suraVersesNumber: "120"),
    SuraDataModel(
        id: "6",
        suraNameEN: "Al-An'am",
        suraNameAR: "الأنعام",
        suraVersesNumber: "165"),
    SuraDataModel(
        id: "7",
        suraNameEN: "Al-A'raf",
        suraNameAR: "الأعراف",
        suraVersesNumber: "206"),
    SuraDataModel(
        id: "8",
        suraNameEN: "Al-Anfal",
        suraNameAR: "الأنفال",
        suraVersesNumber: "75"),
    SuraDataModel(
        id: "9",
        suraNameEN: "At-Tawbah",
        suraNameAR: "التوبة",
        suraVersesNumber: "129"),
    SuraDataModel(
        id: "10",
        suraNameEN: "Yunus",
        suraNameAR: "يونس",
        suraVersesNumber: "109"),
    SuraDataModel(
        id: "11",
        suraNameEN: "Hud",
        suraNameAR: "هود",
        suraVersesNumber: "123"),
    SuraDataModel(
        id: "12",
        suraNameEN: "Yusuf",
        suraNameAR: "يوسف",
        suraVersesNumber: "111"),
    SuraDataModel(
        id: "13",
        suraNameEN: "Ar-Ra'd",
        suraNameAR: "الرعد",
        suraVersesNumber: "43"),
    SuraDataModel(
        id: "14",
        suraNameEN: "Ibrahim",
        suraNameAR: "إبراهيم",
        suraVersesNumber: "52"),
    SuraDataModel(
        id: "15",
        suraNameEN: "Al-Hijr",
        suraNameAR: "الحجر",
        suraVersesNumber: "99"),
    SuraDataModel(
        id: "16",
        suraNameEN: "An-Nahl",
        suraNameAR: "النحل",
        suraVersesNumber: "128"),
    SuraDataModel(
        id: "17",
        suraNameEN: "Al-Isra",
        suraNameAR: "الإسراء",
        suraVersesNumber: "111"),
    SuraDataModel(
        id: "18",
        suraNameEN: "Al-Kahf",
        suraNameAR: "الكهف",
        suraVersesNumber: "110"),
    SuraDataModel(
        id: "19",
        suraNameEN: "Maryam",
        suraNameAR: "مريم",
        suraVersesNumber: "98"),
    SuraDataModel(
        id: "20",
        suraNameEN: "Ta-Ha",
        suraNameAR: "طه",
        suraVersesNumber: "135"),
    SuraDataModel(
        id: "21",
        suraNameEN: "Al-Anbiya",
        suraNameAR: "الأنبياء",
        suraVersesNumber: "112"),
    SuraDataModel(
        id: "22",
        suraNameEN: "Al-Hajj",
        suraNameAR: "الحج",
        suraVersesNumber: "78"),
    SuraDataModel(
        id: "23",
        suraNameEN: "Al-Mu'minun",
        suraNameAR: "المؤمنون",
        suraVersesNumber: "118"),
    SuraDataModel(
        id: "24",
        suraNameEN: "An-Nur",
        suraNameAR: "النّور",
        suraVersesNumber: "64"),
    SuraDataModel(
        id: "25",
        suraNameEN: "Al-Furqan",
        suraNameAR: "الفرقان",
        suraVersesNumber: "77"),
    SuraDataModel(
        id: "26",
        suraNameEN: "Ash-Shu'ara",
        suraNameAR: "الشعراء",
        suraVersesNumber: "227"),
    SuraDataModel(
        id: "27",
        suraNameEN: "An-Naml",
        suraNameAR: "النّمل",
        suraVersesNumber: "93"),
    SuraDataModel(
        id: "28",
        suraNameEN: "Al-Qasas",
        suraNameAR: "القصص",
        suraVersesNumber: "88"),
    SuraDataModel(
        id: "29",
        suraNameEN: "Al-Ankabut",
        suraNameAR: "العنكبوت",
        suraVersesNumber: "69"),
    SuraDataModel(
        id: "30",
        suraNameEN: "Ar-Rum",
        suraNameAR: "الرّوم",
        suraVersesNumber: "60"),
    SuraDataModel(
        id: "31",
        suraNameEN: "Luqman",
        suraNameAR: "لقمان",
        suraVersesNumber: "34"),
    SuraDataModel(
        id: "32",
        suraNameEN: "As-Sajda",
        suraNameAR: "السجدة",
        suraVersesNumber: "30"),
    SuraDataModel(
        id: "33",
        suraNameEN: "Al-Ahzab",
        suraNameAR: "الأحزاب",
        suraVersesNumber: "73"),
    SuraDataModel(
        id: "34",
        suraNameEN: "Saba",
        suraNameAR: "سبأ",
        suraVersesNumber: "54"),
    SuraDataModel(
        id: "35",
        suraNameEN: "Fatir",
        suraNameAR: "فاطر",
        suraVersesNumber: "45"),
    SuraDataModel(
        id: "36",
        suraNameEN: "Ya-Sin",
        suraNameAR: "يس",
        suraVersesNumber: "83"),
    SuraDataModel(
        id: "37",
        suraNameEN: "As-Saffat",
        suraNameAR: "الصافات",
        suraVersesNumber: "182"),
    SuraDataModel(
        id: "38", suraNameEN: "Sad", suraNameAR: "ص", suraVersesNumber: "88"),
    SuraDataModel(
        id: "39",
        suraNameEN: "Az-Zumar",
        suraNameAR: "الزمر",
        suraVersesNumber: "75"),
    SuraDataModel(
        id: "40",
        suraNameEN: "Ghafir",
        suraNameAR: "غافر",
        suraVersesNumber: "85"),
    // Continue similarly until ID: "114"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.quranBackground,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppAssets.islamiHeaderImg),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  cursorColor: AppColors.primaryColor,
                  style: const TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleTextColor,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.secondryColor.withOpacity(0.7),
                    hintText: "Sura Name",
                    hintStyle: const TextStyle(
                      fontFamily: "Janna",
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.titleTextColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      ),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ImageIcon(
                        AssetImage(
                          AppAssets.quranIcn,
                        ),
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 20.0,
                  left: 20.0,
                  bottom: 10.0,
                ),
                child: Text(
                  "Most Recently",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 155,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => RecentItemWidget(
                    suraDataModel: recentDataList[index],
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemCount: recentDataList.length,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 20.0,
                  left: 20.0,
                  bottom: 10.0,
                ),
                child: Text(
                  "Sura List",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleTextColor,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      QuranDetailsView.routeName,
                      arguments: suraList[index],
                    );
                  },
                  child: SuraItemWidget(
                    suraDataModel: suraList[index],
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1.5,
                  endIndent: 50,
                  indent: 50,
                ),
                itemCount: suraList.length,
              ),
            ],
          ),
        )
      ],
    );
  }
}
