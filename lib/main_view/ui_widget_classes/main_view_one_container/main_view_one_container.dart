import 'package:flutter/material.dart';
import '../../../common_functions/common_ui_styles.dart';

class MainViewOneContainer extends StatelessWidget {
  const MainViewOneContainer({super.key});

  @override
  Widget build(BuildContext context){

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 650,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: CommonUiStyles().getCBorderRadiusSmall(),
          color: Color.fromRGBO(31, 31, 31, 0.4),
        ),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(

                ),
                child: Row(
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}