// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Sepha extends StatefulWidget {
  const Sepha({Key? key}) : super(key: key);

  @override
  _SephaState createState() => _SephaState();
}

class _SephaState extends State<Sepha> {
  int _sephaCounter = 0; // عدد التسبيحات
  int _istighfarCounter = 0; // عدد الاستغفارات
  int _takbirCounter = 0; // عدد التكبيرات
  int _tahlilCounter = 0; // عدد التهليلات (لا إله إلا الله)
  int _hamdCounter = 0; // عدد الحمد (الحمد لله)
  int _tasbeehHamdCounter = 0; // عدد التسبيح والتحميد (سبحان الله وبحمده)
  int _combinedCounter = 0; // عدد التسبيح والتحميد والتكبير (سبحان الله والحمد لله ولا إله إلا الله والله أكبر)

  void _incrementSepharCounter() {
    setState(() {
      _sephaCounter++;
    });
  }

  void _resetSepharCounter() {
    setState(() {
      _sephaCounter = 0;
    });
  }

  void _incrementIstighfarCounter() {
    setState(() {
      _istighfarCounter++;
    });
  }

  void _resetIstighfarCounter() {
    setState(() {
      _istighfarCounter = 0;
    });
  }

  void _incrementTakbirCounter() {
    setState(() {
      _takbirCounter++;
    });
  }

  void _resetTakbirCounter() {
    setState(() {
      _takbirCounter = 0;
    });
  }

  void _incrementTahlilCounter() {
    setState(() {
      _tahlilCounter++;
    });
  }

  void _resetTahlilCounter() {
    setState(() {
      _tahlilCounter = 0;
    });
  }

  void _incrementHamdCounter() {
    setState(() {
      _hamdCounter++;
    });
  }

  void _resetHamdCounter() {
    setState(() {
      _hamdCounter = 0;
    });
  }

  void _incrementTasbeehHamdCounter() {
    setState(() {
      _tasbeehHamdCounter++;
    });
  }

  void _resetTasbeehHamdCounter() {
    setState(() {
      _tasbeehHamdCounter = 0;
    });
  }

  void _incrementCombinedCounter() {
    setState(() {
      _combinedCounter++;
    });
  }

  void _resetCombinedCounter() {
    setState(() {
      _combinedCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
     Size size =  MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
         
         Container(
          margin: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.black, width: 2 ),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color.fromARGB(98, 10, 217, 27), Colors.white],
            ),
          ),
          width: size.width,
          height: size.height*0.2,
          child: Center(child: Text("صدقه جاريه علي روح المرحوم \n الحاج/عبدالفتاح السيد السيد الدقن \n و  محمد وائل عبد الفتاح الدقن  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
         
          SizedBox(height: 50),

          // سبحة التسبيح
          _buildCounterSection(
            title: "التسبيح",
            counter: _sephaCounter,
            maxCount: 33,
            color: Colors.teal,
            onIncrement: _incrementSepharCounter,
            onReset: _resetSepharCounter,
          ),
          SizedBox(height: 40),

          // سبحة الاستغفار
          _buildCounterSection(
            title: "الاستغفار",
            counter: _istighfarCounter,
            maxCount: 100,
            color: Colors.blue,
            onIncrement: _incrementIstighfarCounter,
            onReset: _resetIstighfarCounter,
          ),
          SizedBox(height: 40),

          // سبحة التكبير
          _buildCounterSection(
            title: "التكبير",
            counter: _takbirCounter,
            maxCount: 33,
            color: Colors.orange,
            onIncrement: _incrementTakbirCounter,
            onReset: _resetTakbirCounter,
          ),
          SizedBox(height: 40),

          // سبحة التهليل (لا إله إلا الله)
          _buildCounterSection(
            title: "لا إله إلا الله",
            counter: _tahlilCounter,
            maxCount: 100,
            color: Colors.purple,
            onIncrement: _incrementTahlilCounter,
            onReset: _resetTahlilCounter,
          ),
          SizedBox(height: 40),

          // سبحة الحمد (الحمد لله)
          _buildCounterSection(
            title: "الحمد",
            counter: _hamdCounter,
            maxCount: 100,
            color: Colors.green,
            onIncrement: _incrementHamdCounter,
            onReset: _resetHamdCounter,
          ),
          SizedBox(height: 40),

          // سبحة التسبيح والتحميد (سبحان الله وبحمده)
          _buildCounterSection(
            title: "سبحان الله وبحمده ",
            counter: _tasbeehHamdCounter,
            maxCount: 100,
            color: Colors.indigo,
            onIncrement: _incrementTasbeehHamdCounter,
            onReset: _resetTasbeehHamdCounter,
          ),
          SizedBox(height: 40),

          // سبحة التسبيح والتحميد والتكبير (سبحان الله والحمد لله ولا إله إلا الله والله أكبر)
          _buildCounterSection(
            title: "سبحان الله والحمد لله \nولا إله إلا الله والله أكبر",
            counter: _combinedCounter,
            maxCount: 50,
            color: Colors.red,
            onIncrement: _incrementCombinedCounter,
            onReset: _resetCombinedCounter,
          ),
        ],
      ),
    );
  }

  Widget _buildCounterSection({
    required String title,
    required int counter,
    required int maxCount,
    required Color color,
    required VoidCallback onIncrement,
    required VoidCallback onReset,
  }) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: CircularProgressIndicator(
                value: counter / maxCount,
                strokeWidth: 10,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: onIncrement,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 10),
        OutlinedButton(
          onPressed: onReset,
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            side: BorderSide(color: color),
          ),
          child: Text(
            'تصفير',
            style: TextStyle(
              fontSize: 20,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}