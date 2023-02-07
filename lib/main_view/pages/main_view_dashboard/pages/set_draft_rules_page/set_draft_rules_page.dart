import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/pages/set_draft_rules_page/set_draft_rules_files/set_draft_rules_ui.dart';

class SetDraftRulesPage extends StatefulWidget {
  const SetDraftRulesPage({super.key});
  @override
  State<SetDraftRulesPage> createState() => _SetDraftRulesPageState();
}

class _SetDraftRulesPageState extends State<SetDraftRulesPage> {

  refreshWidget(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(129, 129, 129, 0.2),
      width: size.width * 0.85,
      height: (size.height * 1.0) - 40,
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              alignment: Alignment.center,
              child: const Text(
                "Genshin Abyss Draft Rules",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SetDraftRulesUi().buildSummarizeContainer(size),
            SetDraftRulesUi().buildSliderContainer1(size,refreshWidget),
            SetDraftRulesUi().buildSliderContainer2(size,refreshWidget),
            SetDraftRulesUi().buildSliderContainer3(size, refreshWidget),
            SetDraftRulesUi().buildButtonContainer(size)
          ],
        ),
      ),
    );
  }



}
