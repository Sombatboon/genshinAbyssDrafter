import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/common_functions/common_ui_styles.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/pages/set_draft_rules_page/set_draft_rules_files/set_draft_rules_ui.dart';

class SetDraftRulesPage extends StatefulWidget {
  const SetDraftRulesPage({super.key});

  @override
  State<SetDraftRulesPage> createState() => _SetDraftRulesPageState();
}

class _SetDraftRulesPageState extends State<SetDraftRulesPage> {
  double draftTimer = 60;
  double bans = 1;
  double fiveStarHero = 2;
  double fiveStarWeapons = 4;
  double dupeHeroes = 1;
  double reTries = 1;

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
            buildSummarizeContainer(size),
            Container(
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
                    margin: EdgeInsets.only(left: 10),
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
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(

                                      child: Text(
                                        "Draft Timer: ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "${draftTimer.floor()}",
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Slider(
                                  value: draftTimer,
                                  max: 120,
                                  min: 0,
                                  divisions: 120,
                                  onChanged: (double value) {
                                    setState(() {
                                      draftTimer = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.4,
                          height: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Bans: ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "${bans.floor()}",
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Slider(
                                  value: bans,
                                  max: 5,
                                  min: 0,
                                  divisions: 5,
                                  onChanged: (double value) {
                                    setState(() {
                                      bans = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
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
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Five star Heroes: ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "${fiveStarHero.floor()}",
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Slider(
                                  value: fiveStarHero,
                                  max: 4,
                                  min: 0,
                                  divisions: 4,
                                  onChanged: (double value) {
                                    setState(() {
                                      fiveStarHero = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.4,
                          height: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Dupe Heroes: ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "${dupeHeroes.floor()}",
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Slider(
                                  value: dupeHeroes,
                                  max: 4,
                                  min: 0,
                                  divisions: 4,
                                  onChanged: (double value) {
                                    setState(() {
                                      dupeHeroes = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
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
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Five star Weapons: ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "${fiveStarWeapons.floor()}",
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Slider(
                                  value: fiveStarWeapons,
                                  max: 4,
                                  min: 0,
                                  divisions: 4,
                                  onChanged: (double value) {
                                    setState(() {
                                      fiveStarWeapons = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.4,
                          height: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Retries: ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "${reTries.floor()}",
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Slider(
                                  value: reTries,
                                  max: 5,
                                  min: 0,
                                  divisions: 5,
                                  onChanged: (double value) {
                                    setState(() {
                                      reTries = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              width: size.width * 0.75,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildSliderRowUi1(Size size) {
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
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "Draft Timer: ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "${draftTimer.floor()}s",
                                    style: TextStyle(
                                        color: Colors.amber, fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Slider(
                              value: draftTimer,
                              max: 120,
                              min: 0,
                              divisions: 120,
                              onChanged: (double value) {
                                setState(() {
                                  draftTimer = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
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
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Bans: ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "${bans.floor()}s",
                                          style: TextStyle(
                                              color: Colors.amber,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Slider(
                                    value: bans,
                                    max: 4,
                                    min: 0,
                                    divisions: 4,
                                    onChanged: (double value) {
                                      setState(() {
                                        bans = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]));
  }

  Container buildSliderContainer(
    Size size,
    String text,
    double valueSlide,
  ) {
    return Container(
      width: size.width * 0.4,
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  child: Text(
                    "${valueSlide.floor()}s",
                    style: TextStyle(color: Colors.amber, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Slider(
              value: valueSlide,
              max: 120,
              min: 0,
              divisions: 120,
              onChanged: (double value) {
                setState(() {
                  valueSlide = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildSummarizeContainer(Size size) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: size.width * 0.75,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
        color: Color.fromRGBO(0, 0, 0, 0.2),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
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
                        "Draft Time: ", "${draftTimer.floor()}"),
                    SetDraftRulesUi()
                        .buildSummarizeRow("Bans: ", "${bans.floor()}"),
                    SetDraftRulesUi().buildSummarizeRow(
                        "Five Star Heroes: ", "${fiveStarHero.floor()}"),
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
                        "Dupe Heroes: ", "${dupeHeroes.floor()}"),

                    SetDraftRulesUi().buildSummarizeRow(
                        "Retries: ", "${reTries.floor()}"),
                    SetDraftRulesUi()
                        .buildSummarizeRow("Five star Weapons: ", "${fiveStarWeapons.floor()}"),
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
