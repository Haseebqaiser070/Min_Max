import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Presentation/InspectionScreen/Controller/InspectionScreenController.dart';
import '../../../App_Routes/Routes.dart';
import '../../../Utils/AppNavigationButtons/AppNavigationButtons.dart';
import '../../../Utils/AppStyles/AppStyles.dart';

class VehicleDetails extends GetView<InspectionScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                circularBackArrow(context,()=>{Get.back()}),
                // circularNotificationButton(context,()=>{Get.toNamed(Routes.Notifications)}),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("MERCEDES".tr,style: headingLarge(context),),
                      Text("2019-AMD CLS".tr,style: labelMediumThin(context),),
                      Container(
                        width: Get.width,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset("assets/images/InspectionScreencarstage.png",fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,width: 250,height: 350,),
                            Image.asset("assets/images/VehicleDetailscar.png",fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,width: 240,height: 340,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("vehicleDetaildetailtitle".tr,style: headingLarge(context),),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/images/profileimg.jpg"),
                          ),
                          SizedBox(width: 5,),
                          Expanded(child: Text("Seller's Name",style: labelSmallThin(context),)),
                          SizedBox(width: 5,),
                          Text("vehicleDetailcontacttxt".tr,style: labelSmallThin(context),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Repaid Detail",style: labelSmallThin(context),),
                             Text("Any Detail ll be here",style: labelSmallThin(context),),
                           ],
                         ),
                          SizedBox(height: 5,),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Repaid Detail",style: labelSmallThin(context),),
                             Text("Any Detail ll be here",style: labelSmallThin(context),),
                           ],
                         ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Align(
                        alignment: Alignment.center,
                        child: largeButton(context, "loginBtntxt".tr, () => {
                          Get.offAllNamed(Routes.RootScreen)
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}