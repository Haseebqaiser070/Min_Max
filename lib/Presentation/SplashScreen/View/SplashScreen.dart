import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';
import '../Controller/SplashScreenController.dart';
import '../Widgets/SplashScreenWidget.dart';

class SplashScreen extends GetView<SplashScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
            child: Stack(
              children: [
                Positioned(
                  left: -30,
                  top: 50,
                  child: smallCircularImage(context,"assets/images/splashcar3.jpg"),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: smallCircularImage(context, "assets/images/splashcar1.png"),
                ),
                Positioned(
                  right: 50,
                  top: 140,
                  child: mediumCircularImage(context, "assets/images/splashcar2.jpg"),
                ),
                Positioned(
                  right: -30,
                  bottom: 0,
                  child: smallCircularImage(context,"assets/images/splashcar5.jpg"),
                ),
                Positioned(
                  left: -40,
                  bottom: 50,
                  child: largeCircularImage(context,"assets/images/splashcar4.jpg"),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/images/icon.png",color: Theme.of(context).colorScheme.onBackground,),
                  ),
                )
              ],
            )
            ),
            Expanded(
              child: Column(
                children: [
                  Text(controller.appName,style: titleLargeThick(context),),
                  SizedBox(height: 20,),
                  Text(controller.title,style: labelSmall(context),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}