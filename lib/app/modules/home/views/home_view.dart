import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;
  @override
  Widget build(BuildContext context) {
   double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar(){
      return AppBar(
        title: Text("HOME"),

      );
    }
    double heightBody = context.height - myAppBar().preferredSize.height-paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Center(
        child: LayoutBuilder(builder: (context,Constraints){
          double lebarKuning = Constraints.maxWidth;
          double tinggiKuning = Constraints.maxHeight;
          return Stack(
            children: [
              Container(
                width: lebarKuning * 0.9,
                height: tinggiKuning * 0.8,
                color: Colors.blue,
              ),
               Container(
                margin: EdgeInsets.all(70),
                width: lebarKuning * 0.6,
                height: tinggiKuning * 0.5,
                color: Colors.yellow,
              ),
              
            ],
          );
        })
      ),
    );
  }
}
