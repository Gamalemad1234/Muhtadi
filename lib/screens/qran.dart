// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart'; // للخطوط الجميلة

void main() {
  runApp(Qran());
}

class Qran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.lateefTextTheme(Theme.of(context).textTheme), // خط Lateef
      ),
      home: QuranHome(),
    );
  }
}

class QuranHome extends StatefulWidget {
  @override
  _QuranHomeState createState() => _QuranHomeState();
}

class _QuranHomeState extends State<QuranHome> {
  List<Surah> surahs = [];
  List<Surah> filteredSurahs = [];

  @override
  void initState() {
    super.initState();
    loadJsonData().then((data) {
      setState(() {
        surahs = data.map((json) => Surah.fromJson(json)).toList();
        filteredSurahs = surahs;
      });
    });
  }

  Future<List<dynamic>> loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/database.json');
    return json.decode(jsonString);
  }

  void filterSurahs(String query) {
    setState(() {
      filteredSurahs = surahs.where((surah) {
        return surah.nameAr.contains(query) || surah.nameEn.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            // backgroundColor: Colors.black87,

      appBar: AppBar(
        title: Text(
          'القرآن الكريم',
          style: GoogleFonts.lateef(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 28),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SurahSearch(filteredSurahs),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredSurahs.length,
        itemBuilder: (context, index) {
          Surah surah = filteredSurahs[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                '${surah.nameAr} (${surah.transliteration})', // عرض Transliteration
                style: GoogleFonts.lateef(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'عدد الآيات: ${surah.versesCount}',
                    style: GoogleFonts.lateef(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'مكان النزول: ${surah.revelationPlace}',
                    style: GoogleFonts.lateef(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              trailing: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '${surah.number}',
                  style: GoogleFonts.lateef(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurahDetail(surah: surah),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class SurahSearch extends SearchDelegate<String> {
  final List<Surah> surahs;

  SurahSearch(this.surahs);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = surahs.where((surah) {
      return surah.nameAr.contains(query) || surah.nameEn.contains(query);
    }).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        Surah surah = results[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(16),
            title: Text(
              '${surah.nameAr} (${surah.transliteration})', // عرض Transliteration
              style: GoogleFonts.lateef(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'عدد الآيات: ${surah.versesCount}',
                  style: GoogleFonts.lateef(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'مكان النزول: ${surah.revelationPlace}',
                  style: GoogleFonts.lateef(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            trailing: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${surah.number}',
                style: GoogleFonts.lateef(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
            onTap: () {
              close(context, '');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SurahDetail(surah: surah),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = surahs.where((surah) {
      return surah.nameAr.contains(query) || surah.nameEn.contains(query);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        Surah surah = suggestions[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.all(16),
            title: Text(
              '${surah.nameAr} (${surah.transliteration})', // عرض Transliteration
              style: GoogleFonts.lateef(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'عدد الآيات: ${surah.versesCount}',
                  style: GoogleFonts.lateef(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'مكان النزول: ${surah.revelationPlace}',
                  style: GoogleFonts.lateef(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            trailing: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${surah.number}',
                style: GoogleFonts.lateef(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
            onTap: () {
              query = surah.nameAr;
              showResults(context);
            },
          ),
        );
      },
    );
  }
}

class SurahDetail extends StatelessWidget {
  final Surah surah;

  SurahDetail({required this.surah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${surah.nameAr} (${surah.transliteration})', // عرض Transliteration
          style: GoogleFonts.lateef(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: surah.verses.length,
        separatorBuilder: (context, index) => SizedBox(height: 8),
        itemBuilder: (context, index) {
          Verse verse = surah.verses[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    verse.textAr,
                    style: GoogleFonts.lateef(
                      fontSize: 26,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.grey[600],
                        size: 20,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '(${verse.number})',
                        style: GoogleFonts.lateef(
                          fontSize: 20,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Surah {
  final int number;
  final String nameAr;
  final String nameEn;
  final String transliteration; // إضافة Transliteration
  final String revelationPlace;
  final int versesCount;
  final List<Verse> verses;

  Surah({
    required this.number,
    required this.nameAr,
    required this.nameEn,
    required this.transliteration,
    required this.revelationPlace,
    required this.versesCount,
    required this.verses,
  });

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      number: json['number'],
      nameAr: json['name']['ar'],
      nameEn: json['name']['en'],
      transliteration: json['name']['transliteration'], // إضافة Transliteration
      revelationPlace: json['revelation_place']['ar'],
      versesCount: json['verses_count'],
      verses: List<Verse>.from(json['verses'].map((x) => Verse.fromJson(x))),
    );
  }
}

class Verse {
  final int number;
  final String textAr;
  final String textEn;

  Verse({
    required this.number,
    required this.textAr,
    required this.textEn,
  });

  factory Verse.fromJson(Map<String, dynamic> json) {
    return Verse(
      number: json['number'],
      textAr: json['text']['ar'],
      textEn: json['text']['en'],
    );
  }
}