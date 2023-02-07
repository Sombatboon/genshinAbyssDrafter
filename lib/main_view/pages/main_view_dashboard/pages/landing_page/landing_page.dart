import 'package:flutter/material.dart';
import '../../../../ui_widget_classes/main_view_one_container/main_view_one_container.dart';
import 'landing_page_files/landing_pages_ui.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(129, 129, 129, 0.2),
      width: size.width * 0.85,
      height: (size.height * 1) - 40,
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            LandingPageUi().buildLogoContainer(),
            const MainViewOneContainer(),
            LandingPageUi().buildPlaceHolderContainer(),
          ],
        ),
      ),
    );
  }


}
