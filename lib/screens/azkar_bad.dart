import 'package:flutter/material.dart';
import 'package:muhtadi/thems/constants.dart';

class AzkarAfterPrayer extends StatelessWidget {
  const AzkarAfterPrayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أذكار بعد الصلاة",
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
              text: "أَسْتَغْفِرُ اللَّهَ (ثلاث مرات)",
              description: "بعد كل صلاة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ، تَبَارَكْتَ يَا ذَا الْجَلَالِ وَالْإِكْرَامِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
              description: "عشر مرات.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الْمَسِيحِ الدَّجَّالِ، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الْمَحْيَا وَالْمَمَاتِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْجَنَّةَ وَأَعُوذُ بِكَ مِنْ النَّارِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ فِعْلَ الْخَيْرَاتِ، وَتَرْكَ الْمُنْكَرَاتِ، وَحُبَّ الْمَسَاكِينِ، وَأَنْ تَغْفِرَ لِي وَتَرْحَمَنِي",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ رِضَاكَ وَالْجَنَّةَ، وَأَعُوذُ بِكَ مِنْ سَخَطِكَ وَالنَّارِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ حُسْنَ الْخَاتِمَةِ، وَأَعُوذُ بِكَ مِنْ سُوءِ الْقَضَاءِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْيُمْنَ وَالتَّوْفِيقَ فِي الْأَمْرِ كُلِّهِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ صِحَّةً فِي الْجِسْمِ، وَقُوَّةً فِي الْبَدَنِ، وَعِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِصْمَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنْ النَّارِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْمُغْفِرَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْبَرَكَةَ فِي الْعُمْرِ، وَالصِّحَّةَ فِي الْجِسْمِ، وَالسَّعَةَ فِي الرِّزْقِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِفَّةَ وَالْغِنَى، وَأَعُوذُ بِكَ مِنْ الْفَقْرِ وَالْفِتْنَةِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدِّينِ وَالدُّنْيَا وَالْآخِرَةِ",
              description: "مرة واحدة.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْجَمَالَ فِي الْخُلُقِ، وَالْجَمَالَ فِي الْخَلْقِ",
              description: "مرة واحدة.",
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