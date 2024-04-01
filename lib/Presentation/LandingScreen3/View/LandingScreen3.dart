import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';

import '../Controller/LandingScreen3Controller.dart';

class LandingScreen3 extends GetView<LandingScreen3Controller>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset("assets/images/landingScreen3Car.jpg",fit: BoxFit.cover,),
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
                    Expanded(child: Text("ls2Discovetxt".tr,style: titleLargeThin(context),)),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("ls2Featuretxt".tr,style: titleLargeThick(context),),
                  ],
                ),
                SizedBox(height: 100,),
                Text("ls3txt".tr,style: labelMediumThin(context),textAlign: TextAlign.center,),
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