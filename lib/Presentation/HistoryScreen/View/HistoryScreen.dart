import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/Presentation/HistoryScreen/Controller/HistoryScreenController.dart';

import '../../../Utils/AppNavigationButtons/AppNavigationButtons.dart';
import '../../../Utils/AppStyles/AppStyles.dart';
import '../../VehicleForSale/VehicleForSaleWidget/VehicleForSaleWidget.dart';


class HistoryScreen extends GetView<HistoryScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: Get.width,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                top: 0,
                child: Image.asset("assets/images/applogobg.png",color: Theme.of(context).colorScheme.shadow,width: Get.width/1.2,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circularBackArrow(context, () => {
                      Get.back()
                    }),
                    circularMenuButton(context, () => {

                    }),
                  ],
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.center,
                    child: Text("History".tr,style: headingLarge(context),)),

                SizedBox(height: 20,),
                Expanded(
                  child: ListView(
                    children: [
                      VehicleForSaleCard1(buildContext: context,name: "Car's Name",model: "Model",price: "Price",repairDetail: "Repair Detail",extraDetail: (){},contactFun: (){},condition: "Condition",),
                      VehicleForSaleCard1(buildContext: context,name: "Car's Name",model: "Model",price: "Price",repairDetail: "Repair Detail",extraDetail: (){},contactFun: (){},condition: "Condition",),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}