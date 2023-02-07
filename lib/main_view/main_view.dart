import 'package:flutter/material.dart';
import 'package:genshin_abyss_drafter/main_view/pages/main_view_dashboard/main_view_dashboard.dart';
import '../widgets/side_bar/side_bar.dart';
import 'main_view_files/main_view_var.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  double viewIndex = MainViewVar().getViewIndex1();

  updateView() {
    setState(() {
      viewIndex = MainViewVar().getViewIndex1();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              MainViewDashboard(viewIndex1: viewIndex,),
              SideBar(updateView: updateView,),
            ],
          ),
        ),
      ),
    );
  }
}
