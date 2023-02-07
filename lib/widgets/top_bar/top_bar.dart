

import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  TopBar({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1 ,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.purple,
      ),
    );
  }
}

