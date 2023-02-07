import 'package:flutter/material.dart';

class CommonUiStyles {
  BoxDecoration buildThemeBoxDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(65, 42, 112, 1),
        Color.fromRGBO(126, 66, 20, 1.0),
      ],
    ));
  }

  BorderRadius getCBorderRadiusSmall() {
    return const BorderRadius.all(Radius.circular(10));
  }

  BoxDecoration getShadowBox(Color color){
    return  BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 0),
          blurRadius: 2,
          spreadRadius: 2,
          color: color,
        ),
      ],
    );
  }
}
