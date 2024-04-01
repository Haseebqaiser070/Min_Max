import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Presentation/InspectionScreen/Controller/InspectionScreenController.dart';

import '../../../Utils/AppNavigationButtons/AppNavigationButtons.dart';
import '../../../Utils/AppStyles/AppStyles.dart';
import '../../HomeScreen/HomeScreenWidgets/HomeScreenWidgets.dart';
import '../InspectionScreenWidget/InspectionScreenWidget.dart';

class InspectionScreen extends GetView<InspectionScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                circularBackArrow(context,()=>{Get.back()}),
                circularNotificationButton(context,()=>{Get.toNamed(Routes.Notifications)}),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10,),
                      Text("MERCEDES".tr,style: headingLarge(context),),
                      Text("2019-AMD CLS".tr,style: labelMediumThin(context),),
                      Container(
                        width: Get.width,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset("assets/images/InspectionScreencarstage.png",fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,width: 200,height: 300,),
                            Image.asset("assets/images/InspectionScreencar.png",fit: BoxFit.contain,width: 200,height: 290,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.wifi_tethering,color: Theme.of(context).colorScheme.onBackground,size: 25,),
                          SizedBox(width: 10,),
                          Text("Inspections".tr,style: titleLargeThick(context),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          InspectionDetailCard(context,"INSPECTION PLACE", "Sheduled","Oct 12,2024","16:00"),
                          InspectionDetailCard(context,"INSPECTION PLACE", "Sheduled","Oct 12,2024","16:00"),
                          InspectionDetailCard(context,"INSPECTION PLACE", "Sheduled","Oct 12,2024","16:00"),
                          InspectionDetailCard(context,"INSPECTION PLACE", "Sheduled","Oct 12,2024","16:00"),
                          InspectionDetailCard(context,"INSPECTION PLACE", "Sheduled","Oct 12,2024","16:00"),
                        ],
                      )
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