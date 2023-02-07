import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/main_view_dashboard.dart';


class MainViewVar {

  static double _viewIndex1 = 0;

  getViewIndex1(){
    return _viewIndex1;
  }

  setViewIndex(double viewIndex){
    _viewIndex1 = viewIndex;



  }
}