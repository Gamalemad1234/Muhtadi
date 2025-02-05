import 'package:flutter/material.dart';
import 'package:muhtadi/thems/constants.dart';

class AzkarQuranic extends StatelessWidget {
  const AzkarQuranic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أدعية قرآنية",
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
              text: "رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنتَ السَّمِيعُ الْعَلِيمُ", 
              description: "سورة البقرة - 127",
            ),
            _buildDuaItem(
              text: "رَبِّ اجْعَلْنِي مُقِيمَ الصَّلَاةِ وَمِن ذُرِّيَّتِي رَبَّنَا وَتَقَبَّلْ دُعَاءِ",
              description: "سورة إبراهيم - 40",
            ),
            _buildDuaItem(
              text: "رَبَّنَا اغْفِرْ لَنَا وَلِإِخْوَانِنَا الَّذِينَ سَبَقُونَا بِالْإِيمَانِ",
              description: "سورة الحشر - 10",
            ),
            _buildDuaItem(
              text: "رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ",
              description: "سورة البقرة - 201",
            ),
            _buildDuaItem(
              text: "رَبِّ زِدْنِي عِلْمًا",
              description: "سورة طه - 114",
            ),
            _buildDuaItem(
              text: "رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي",
              description: "سورة طه - 25-26",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ اجْعَلْنَا مِنَ الْمُتَّقِينَ",
              description: "دعاء مستوحى من القرآن",
            ),
            _buildDuaItem(
              text: "رَبِّ هَبْ لِي مِن لَّدُنكَ ذُرِّيَّةً طَيِّبَةً إِنَّكَ سَمِيعُ الدُّعَاءِ",
              description: "سورة آل عمران - 38",
            ),
            _buildDuaItem(
              text: "رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِن لَّدُنكَ رَحْمَةً",
              description: "سورة آل عمران - 8",
            ),
            _buildDuaItem(
              text: "رَبِّ أَعُوذُ بِكَ مِنْ هَمَزَاتِ الشَّيَاطِينِ وَأَعُوذُ بِكَ رَبِّ أَن يَحْضُرُونِ",
              description: "سورة المؤمنون - 97-98",
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
