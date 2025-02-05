import 'package:flutter/material.dart';
import 'package:muhtadi/thems/constants.dart';

class AzkarFood extends StatelessWidget {
  const AzkarFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أذكار الطعام",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal.shade50, Colors.white],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            _buildDuaItem(
              text: "بِسْمِ اللَّهِ",
              description: "عند بدء الطعام.",
            ),
            _buildDuaItem(
              text: "الْحَمْدُ لِلَّهِ",
              description: "بعد الانتهاء من الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ بَارِكْ لَنَا فِيهِ وَأَطْعِمْنَا خَيْرًا مِنْهُ",
              description: "بعد الانتهاء من الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ أَطْعِمْ مَنْ أَطْعَمَنِي، وَاسْقِ مَنْ سَقَانِي",
              description: "بعد الانتهاء من الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ اجْعَلْهُ نُورًا فِي قَلْبِي، وَبَصَرًا فِي بَصَرِي، وَسَمْعًا فِي سَمْعِي",
              description: "بعد الانتهاء من الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ هَذَا الطَّعَامِ، وَخَيْرَ مَا فِيهِ، وَخَيْرَ مَا أُرْسِلَ بِهِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ هَذَا الطَّعَامِ، وَشَرِّ مَا فِيهِ، وَشَرِّ مَا أُرْسِلَ بِهِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ اجْعَلْ هَذَا الطَّعَامَ قُوَّةً لِي عَلَى طَاعَتِكَ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ اجْعَلْ هَذَا الطَّعَامَ شِفَاءً لِكُلِّ دَاءٍ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ اجْعَلْ هَذَا الطَّعَامَ بَرَكَةً لِي وَلِأَهْلِي",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ طَيِّبًا مُبَارَكًا",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِرِزْقٍ وَاسِعٍ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلصِّحَّةِ وَالْعَافِيَةِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلْقُوَّةِ وَالنَّشَاطِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلْبَرَكَةِ فِي الْعُمْرِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلْعِلْمِ النَّافِعِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلْعَمَلِ الصَّالِحِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلْفَوْزِ بِالْجَنَّةِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلنَّجَاةِ مِنْ النَّارِ",
              description: "قبل البدء في الطعام.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ أَنْ تَجْعَلَ هَذَا الطَّعَامَ سَبَبًا لِلرِّضَا وَالسَّعَادَةِ",
              description: "قبل البدء في الطعام.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDuaItem({required String text, required String description}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}