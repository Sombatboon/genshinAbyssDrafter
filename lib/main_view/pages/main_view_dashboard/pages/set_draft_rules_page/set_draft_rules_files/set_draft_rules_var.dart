import 'package:flutter/material.dart';

class SetDraftRulesVar {

  static double draftTimer = 60;
  static double bans = 1;
  static double fiveStarHeroes = 2;
  static double fiveStarWeapons = 4;
  static double dupeHeroes = 1;
  static double reTries = 1;


  double getVarByIndex(String id){
    double ruleVar = draftTimer;
    switch (id) {
      case "draftTimer": ruleVar =  draftTimer; break;
      case "bans": ruleVar = bans; break;
      case "fiveStarHeroes": ruleVar = fiveStarHeroes; break;
      case "fiveStarWeapons": ruleVar = fiveStarWeapons; break;
      case "dupeHeroes": ruleVar = dupeHeroes; break;
      case "reTries": ruleVar = reTries; break;

    }
    return ruleVar;
  }

  setVarByIndex(String id, double value){

    switch (id) {
      case "draftTimer": draftTimer = value; break;
      case "bans": bans = value; break;
      case "fiveStarHeroes": fiveStarHeroes = value; break;
      case "fiveStarWeapons": fiveStarWeapons = value; break;
      case "dupeHeroes": dupeHeroes = value; break;
      case "reTries": reTries = value; break;
    }
  }

}