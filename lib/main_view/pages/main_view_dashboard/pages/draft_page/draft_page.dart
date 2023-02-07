import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  const DraftPage({super.key});


  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(129, 129, 129, 0.2),
      width: size.width * 0.85,
      height: size.height * 1.1,
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              alignment: Alignment.center,
              child: const Text("Genshin Abyss Drafter ",style: TextStyle(color: Colors.white,fontSize: 20),),

            )
          ],
        ),
      ),
    );
  }
}