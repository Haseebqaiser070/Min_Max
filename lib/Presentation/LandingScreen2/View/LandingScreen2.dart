import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';

import '../Controller/LandingScreen2Controller.dart';

class LandingScreen2 extends GetView<LandingScreen2Controller>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset("assets/images/landingScreen2Car.jpg",fit: BoxFit.cover,),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background.withOpacity(0.9)
            ),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(child: Text("ls2Introtxt".tr,style: titleLargeThin(context),)),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("ls2Futuretxt".tr,style: titleLargeThick(context),),
                  ],
                ),
                SizedBox(height: 100,),
                Text("ls2txt".tr,style: labelMediumThin(context),textAlign: TextAlign.center,),
                SizedBox(height: 100,),
                smallButton(context, "nextButtontxt".tr, () => controller.navigateToNext()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}