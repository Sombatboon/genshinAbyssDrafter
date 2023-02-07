import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/pages/set_draft_rules_page/set_draft_rules_files/set_draft_rules_var.dart';

import '../../../../../../common_functions/common_ui_styles.dart';
import '../../../../../../widgets/sliders/draft_rules_slider.dart';

class SetDraftRulesUi {

  Widget buildSummarizeRow(String text, String valueString) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),),
          Text(valueString,style: const TextStyle(color: Colors.white,fontSize: 20),)
        ],
      ),
    );
  }

  Container buildButtonContainer(Size size) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      width: size.width * 0.75,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Cancel",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }


  Container buildSliderContainer3(Size size, Function refreshParent) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
        color: const Color.fromRGBO(0, 0, 0, 0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Five star Weapons: ",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${SetDraftRulesVar.fiveStarWeapons.floor()}",
                            style: const TextStyle(
                                color: Colors.amber, fontSize: 20),
                          )
                        ],
                      ),
                      DraftRulesSlider(varIndex: "fiveStarWeapons",min: 0,max: 4,divisions: 4,refreshParent: refreshParent,),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Retries: ",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${SetDraftRulesVar.reTries.floor()}",
                            style: const TextStyle(
                                color: Colors.amber, fontSize: 20),
                          )
                        ],
                      ),
                      DraftRulesSlider(varIndex: "reTries", max: 5, min: 0, divisions: 5, refreshParent: refreshParent)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildSliderContainer2(Size size,Function refreshParent) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
        color: const Color.fromRGBO(0, 0, 0, 0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Five star Heroes: ",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${SetDraftRulesVar.fiveStarHeroes.floor()}",
                            style: const TextStyle(
                                color: Colors.amber, fontSize: 20),
                          )
                        ],
                      ),
                      DraftRulesSlider(varIndex: "fiveStarHeroes", max: 4, min: 0, divisions: 4, refreshParent: refreshParent)
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Dupe Heroes: ",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${SetDraftRulesVar.dupeHeroes.floor()}",
                            style: const TextStyle(
                                color: Colors.amber, fontSize: 20),
                          )
                        ],
                      ),
                      DraftRulesSlider(varIndex: "dupeHeroes", max: 4, min: 0, divisions: 4, refreshParent: refreshParent)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


  Container buildSliderContainer1(Size size, Function refreshParent) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
        color: const Color.fromRGBO(0, 0, 0, 0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.4,
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Draft Timer: ",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${SetDraftRulesVar.draftTimer.floor()}",
                            style: const TextStyle(
                                color: Colors.amber, fontSize: 20),
                          )
                        ],
                      ),
                      DraftRulesSlider(varIndex: "draftTimer", max: 120, min: 0, divisions: 120, refreshParent: refreshParent)
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Bans: ",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "${SetDraftRulesVar.bans.floor()}",
                            style: const TextStyle(
                                color: Colors.amber, fontSize: 20),
                          )
                        ],
                      ),
                      DraftRulesSlider(varIndex: "bans", max: 4, min: 0, divisions: 4, refreshParent: refreshParent)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildSummarizeContainer(Size size) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: size.width * 0.75,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
        color: const Color.fromRGBO(0, 0, 0, 0.2),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Draft Rules Summarized",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SetDraftRulesUi().buildSummarizeRow(
                        "Draft Time: ", "${SetDraftRulesVar.draftTimer.floor()}"),
                    SetDraftRulesUi()
                        .buildSummarizeRow("Bans: ", "${SetDraftRulesVar.bans.floor()}"),
                    SetDraftRulesUi().buildSummarizeRow(
                        "Five Star Heroes: ", "${SetDraftRulesVar.fiveStarHeroes.floor()}"),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SetDraftRulesUi().buildSummarizeRow(
                        "Dupe Heroes: ", "${SetDraftRulesVar.dupeHeroes.floor()}"),

                    SetDraftRulesUi().buildSummarizeRow(
                        "Retries: ", "${SetDraftRulesVar.reTries.floor()}"),
                    SetDraftRulesUi()
                        .buildSummarizeRow("Five star Weapons: ", "${SetDraftRulesVar.fiveStarWeapons.floor()}"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}