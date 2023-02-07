

import 'package:flutter/material.dart';

class SetDraftRulesUi {
  Widget buildSummarizeRow(String text, String valueString) {
    return Container(
      width: 300,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

            child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20),) ,
          ),
          Container(
            child: Text(valueString,style: TextStyle(color: Colors.white,fontSize: 20),),
          )
        ],
      ),
    );
  }
}