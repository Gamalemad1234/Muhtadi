import 'package:flutter/material.dart';
import 'package:muhtadi/screens/adeia_nabawia.dart';
import 'package:muhtadi/screens/adia_qrania.dart';
import 'package:muhtadi/screens/azkar_alastikaz.dart';
import 'package:muhtadi/screens/azkar_alnom.dart';
import 'package:muhtadi/screens/azkar_almasa.dart';
import 'package:muhtadi/screens/azkar_alsabah.dart';
import 'package:muhtadi/screens/azkar_bad.dart';
import 'package:muhtadi/screens/azkar_enter_mosque.dart';
import 'package:muhtadi/screens/azkar_exit_home.dart';
import 'package:muhtadi/screens/azkar_exit_mosque.dart';
import 'package:muhtadi/screens/azkar_food.dart';

class azkar extends StatefulWidget {
  const azkar({super.key});

  @override
  State<azkar> createState() => _azkarState();
}

class _azkarState extends State<azkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal.shade50, Colors.white],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: 20),
            _buildAzkarCard(
              title: "أذكار الصباح",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarMorning()),
                );
              },
            ),
            _buildAzkarCard(
              title: "أذكار المساء",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarEvening()),
                );
              },
            ),
            _buildAzkarCard(
              title: "أذكار بعد الصلاة",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarAfterPrayer ()),
                );
              },
            ),
            _buildAzkarCard(
              title: "أذكار النوم",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarSleep()),
                );
              },
            ),
            _buildAzkarCard(
              title: "أذكار الاستيقاظ",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarWakeUp()),
                );
              },
            ),
            _buildAzkarCard(
              title: "أدعية النبي صلى الله عليه وسلم",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AdiaNabawia()),
                );
              },
            ),
            _buildAzkarCard(
              title: "الأدعية القرآنية",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarQuranic()),
                );
              },
            ),
            _buildAzkarCard(
              title: "أذكار الطعام",
              onTap: () {
             Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarFood()),
                );              },
            ),
            _buildAzkarCard(
              title: "أذكار الخروج من المنزل",
              onTap: () {
          Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarExitHome()));              },
            ),
            _buildAzkarCard(
              title: "أذكار دخول المسجد",
              onTap: () {
         Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const AzkarEnterMosque()));                   },
            ),
            _buildAzkarCard(
              title: "أذكار الخروج من المسجد",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AzkarExitMosque()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAzkarCard({required String title, required VoidCallback onTap}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.teal.shade100, Colors.teal.shade50],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.teal.shade900,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}