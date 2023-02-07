


import 'package:flutter/material.dart';

import '../../../../../../common_functions/common_ui_styles.dart';

class LandingPageUi {


  Widget buildLogoContainer() {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
          height: 150,
          width: 150,
          child: Image.asset("lib/assets/genshin_logo_1.png")),
    );
  }

  Container buildPlaceHolderContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
        color: Color.fromRGBO(31, 31, 31, 0.4),
      ),
    );
  }
}