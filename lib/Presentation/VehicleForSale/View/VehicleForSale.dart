import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Presentation/VehicleForSale/Controller/VehicleForSaleController.dart';

import '../../../Utils/AppNavigationButtons/AppNavigationButtons.dart';
import '../../../Utils/AppStyles/AppStyles.dart';
import '../VehicleForSaleWidget/VehicleForSaleWidget.dart';

class VehicleForSale extends GetView<VehicleForSaleController>{
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
                    circularAddButton(context, () => {
                      Get.toNamed(Routes.VehicleSale)
                    }),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("vehicleforsaletitle".tr,style: headingLarge(context),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    circularFilterButton(context, () => {
                      showFilterSheet(context)
                    }),
                    circularChangeViewButton(context, () => {
                      controller.isGridView.value = !controller.isGridView.value
                    }),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListTile(
                        dense: true,
                        title: Row(
                          children: [
                            Obx(() => Radio(
                              value: "sale",
                              groupValue: controller.currentSaleType.value,
                              onChanged: (v){
                                print(v.toString());
                                controller.currentSaleType.value = v.toString();},
                              activeColor: Theme.of(context).colorScheme.onBackground,
                              fillColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
                            ),),
                            Text("vehicleforsaleforsaletxt".tr,style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        dense: true,
                        title: Row(
                          children: [
                            Obx(() => Radio(
                              value: "trade",
                              groupValue: controller.currentSaleType.value,
                              onChanged: (v){
                                print(v.toString());
                                controller.currentSaleType.value = v.toString();},
                              activeColor: Theme.of(context).colorScheme.onBackground,
                              fillColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
                            ),),
                            Text("vehicleforsalefortradetxt".tr,style: TextStyle(fontSize: 16),)
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
                Obx(() => controller.isGridView.value?
                    Expanded(child:
                    GridView.count(
                        crossAxisCount: 2,
                      // childAspectRatio: 1/1.11,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      padding: EdgeInsets.all(5),
                      children: [
                        VehicleForSaleCard2(context,"Car's Name","Model","140000","Condition",(){}),
                        VehicleForSaleCard2(context,"Car's Name","Model","140000","Condition",(){}),
                        VehicleForSaleCard2(context,"Car's Name","Model","140000","Condition",(){}),
                        VehicleForSaleCard2(context,"Car's Name","Model","140000","Condition",(){}),
                        VehicleForSaleCard2(context,"Car's Name","Model","140000","Condition",(){}),
                      ],
                    ))
                    : Expanded(
                  child: ListView(
                    children: [
                      VehicleForSaleCard1(buildContext: context,name: "Car's Name",model: "Model",price: "Price",repairDetail: "Repair Detail",extraDetail: (){},contactFun: (){},condition: "Condition",),
                      VehicleForSaleCard1(buildContext: context,name: "Car's Name",model: "Model",price: "Price",repairDetail: "Repair Detail",extraDetail: (){},contactFun: (){},condition: "Condition",),
                    ],
                  ),
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}