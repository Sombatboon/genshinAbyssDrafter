import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/main_view/main_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {


  runApp(const GenshinAbyssDrafter());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class GenshinAbyssDrafter extends StatelessWidget {
  const GenshinAbyssDrafter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genshin Abyss Drafter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainView(),
    );
  }
}

