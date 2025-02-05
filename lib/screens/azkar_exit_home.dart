import 'package:flutter/material.dart';
import 'package:muhtadi/thems/constants.dart';

class AzkarExitHome extends StatelessWidget {
  const AzkarExitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أذكار الخروج من المنزل",
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
              text: "بِسْمِ اللَّهِ، تَوَكَّلْتُ عَلَى اللَّهِ، وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ أَنْ أَضِلَّ أَوْ أُضَلَّ، أَوْ أَزِلَّ أَوْ أُزَلَّ، أَوْ أَظْلِمَ أَوْ أُظْلَمَ، أَوْ أَجْهَلَ أَوْ يُجْهَلَ عَلَيَّ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْمَخْرَجِ وَخَيْرَ الْمَدْخَلِ، بِسْمِ اللَّهِ خَرَجْنَا وَعَلَى اللَّهِ رَبِّنَا تَوَكَّلْنَا",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِصْمَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنْ النَّارِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْمُغْفِرَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْبَرَكَةَ فِي الْعُمْرِ، وَالصِّحَّةَ فِي الْجِسْمِ، وَالسَّعَةَ فِي الرِّزْقِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِفَّةَ وَالْغِنَى، وَأَعُوذُ بِكَ مِنْ الْفَقْرِ وَالْفِتْنَةِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدِّينِ وَالدُّنْيَا وَالْآخِرَةِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْجَمَالَ فِي الْخُلُقِ، وَالْجَمَالَ فِي الْخَلْقِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْيُمْنَ وَالتَّوْفِيقَ فِي الْأَمْرِ كُلِّهِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ صِحَّةً فِي الْجِسْمِ، وَقُوَّةً فِي الْبَدَنِ، وَعِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِصْمَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنْ النَّارِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْمُغْفِرَةَ فِي الدُّنْيَا وَالْآخِرَةِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْبَرَكَةَ فِي الْعُمْرِ، وَالصِّحَّةَ فِي الْجِسْمِ، وَالسَّعَةَ فِي الرِّزْقِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعِفَّةَ وَالْغِنَى، وَأَعُوذُ بِكَ مِنْ الْفَقْرِ وَالْفِتْنَةِ",
              description: "عند الخروج من المنزل.",
            ),
            _buildDuaItem(
              text: "اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدِّينِ وَالدُّنْيَا وَالْآخِرَةِ",
              description: "عند الخروج من المنزل.",
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