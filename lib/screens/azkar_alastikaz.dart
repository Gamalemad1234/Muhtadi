import 'package:flutter/material.dart';
import 'package:muhtadi/thems/constants.dart';

class AzkarWakeUp extends StatelessWidget {
  const AzkarWakeUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أذكار الاستيقاظ",
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
              text: "الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ، وَإِلَيْكَ النُّشُورُ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِصْمَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنْ النَّارِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْمُغْفِرَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْبَرَكَةَ فِي الْعُمْرِ، وَالصِّحَّةَ فِي الْجِسْمِ، وَالسَّعَةَ فِي الرِّزْقِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِفَّةَ وَالْغِنَى، وَأَعُوذُ بِكَ مِنْ الْفَقْرِ وَالْفِتْنَةِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدِّينِ وَالدُّنْيَا وَالْآخِرَةِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْجَمَالَ فِي الْخُلُقِ، وَالْجَمَالَ فِي الْخَلْقِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْيُمْنَ وَالتَّوْفِيقَ فِي الْأَمْرِ كُلِّهِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ صِحَّةً فِي الْجِسْمِ، وَقُوَّةً فِي الْبَدَنِ، وَعِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِصْمَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنْ النَّارِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْمُغْفِرَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْبَرَكَةَ فِي الْعُمْرِ، وَالصِّحَّةَ فِي الْجِسْمِ، وَالسَّعَةَ فِي الرِّزْقِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِفَّةَ وَالْغِنَى، وَأَعُوذُ بِكَ مِنْ الْفَقْرِ وَالْفِتْنَةِ",
              description: "عند الاستيقاظ من النوم.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدِّينِ وَالدُّنْيَا وَالْآخِرَةِ",
              description: "عند الاستيقاظ من النوم.",
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