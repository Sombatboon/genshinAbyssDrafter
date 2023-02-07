import 'package:flutter/material.dart';

import '../../../../../common_functions/common_ui_styles.dart';
import '../../../../ui_widget_classes/main_view_one_container/main_view_one_container.dart';

class LandingPage extends StatelessWidget{
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(129, 129, 129, 0.2),
      width: size.width * 0.85,
      height: (size.height * 1) - 40,
      padding: const EdgeInsets.only(
          left: 15, right: 15, bottom: 15, top: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildLogoContainer(),
            MainViewOneContainer(),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                borderRadius:
                CommonUiStyles().getCBorderRadiusSmall(),
                color: Color.fromRGBO(31, 31, 31, 0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }


}

Widget buildLogoContainer() {
  return SizedBox(
    width: double.infinity,
    child: SizedBox(
        height: 150,
        width: 150,
        child: Image.asset("lib/assets/genshin_logo_1.png")),
  );
}