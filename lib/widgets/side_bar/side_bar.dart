import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/main_view/main_view_files/main_view_var.dart';

class SideBar extends StatefulWidget {
  Function updateView;
  SideBar({super.key, required this.updateView});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  double pageIndex = 0;

  setPageIndex(double index){
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    @override
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 20),
      child: Container(
        height: size.height * 0.95,
        width: 200,
        padding: EdgeInsets.only(left: 10, right: 10),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 2,
              spreadRadius: 2,
              color: Color.fromRGBO(216, 122, 44, 0.2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.051),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                children: [
                  if(pageIndex == 0)
                  buildCreateDraftButton(),
                  if(pageIndex == 1)
                  buildBackButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildCreateDraftButton() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          MainViewVar().setViewIndex(1);

          setPageIndex(1);
          widget.updateView();
        },
        child: Text("Create Draft Room"),
      ),
    );
  }

  Container buildBackButton() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          MainViewVar().setViewIndex(0);
          setPageIndex(0);
          widget.updateView();
        },
        child: Text("Return"),
      ),
    );
  }
}
