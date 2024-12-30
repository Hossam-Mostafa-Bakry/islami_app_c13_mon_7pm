import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c13_mon_7pm/core/constants/app_assets.dart';
import 'package:islami_app_c13_mon_7pm/core/theme/app_colors.dart';
import 'package:islami_app_c13_mon_7pm/models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "/quran_details_view";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> verseList = [];

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SuraDataModel;

    // async
    if (verseList.isEmpty) loadSuraData(data.id);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.suraDetailsImg,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            data.suraNameEN,
            style: const TextStyle(
                fontSize: 20.0,
                fontFamily: "Janna",
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor),
          ),
          iconTheme: const IconThemeData(color: AppColors.primaryColor),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                data.suraNameAR,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 24.0,
                    fontFamily: "Janna",
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                itemBuilder: (context, index) => Text(
                  "[${index + 1}] ${verseList[index]}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    height: 1.8,
                    fontFamily: "Janna",
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                itemCount: verseList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<String>
  void loadSuraData(String suraID) async {
    String content = await rootBundle.loadString("assets/files/$suraID.txt");
    setState(() {
      verseList = content.split("\n");
    });
  }
}
