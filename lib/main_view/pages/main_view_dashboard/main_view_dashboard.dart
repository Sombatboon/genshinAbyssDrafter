import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/pages/draft_page/draft_page.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/pages/landing_page/landing_page.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/pages/set_draft_rules_page/set_draft_rules_page.dart';
import '../../../common_functions/common_ui_styles.dart';

class MainViewDashboard extends StatelessWidget {

  final double viewIndex1;
  const MainViewDashboard({super.key,required this.viewIndex1});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
          alignment: Alignment.centerRight,
          width: size.width,
          padding: const EdgeInsets.all(20),
          decoration: CommonUiStyles().buildThemeBoxDecoration(),
          child: Column(
            children: [
              if(viewIndex1 == 0)
                const LandingPage(),
              if(viewIndex1 == 1)
               SetDraftRulesPage(),
              if(viewIndex1 == 2)
                const DraftPage(),
            ],
          ));

  }

}

