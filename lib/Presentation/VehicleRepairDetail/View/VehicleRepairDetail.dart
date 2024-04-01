import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Presentation/VehicleRepairDetail/Controller/VehicleRepairDetailController.dart';

import '../../../Utils/AppImagePicker/AppImagePicker.dart';
import '../../../Utils/AppNavigationButtons/AppNavigationButtons.dart';
import '../../../Utils/AppStyles/AppStyles.dart';
import '../../../Utils/AppTextFieldStyle/AppTextFieldStyle.dart';

class VehicleRepairDetail extends GetView<VehicleRepairDetailController>{
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
              children: [
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circularBackArrow(context, () => {
                      Get.back()
                    }),
                    circularNotificationButton(context, () => {
                      Get.toNamed(Routes.Notifications)
                    })
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.center,
                              child: Text("MERCEDES".tr,style: headingLarge(context),)),
                          Align(
                              alignment: Alignment.center,
                              child: Text("2019-AMD CLS".tr,style: labelMediumThin(context),)),
                          SizedBox(height: 20,),
                          Container(
                            width: Get.width,
                            height: 120,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Image.asset("assets/images/homeScreencarstage.png",fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,)),
                                Image.asset("assets/images/homeScreencar.png",fit: BoxFit.contain,),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("vehiclerepairdetailtitle".tr,style: headingLarge(context),),
                          Text("vehiclerepairdetailuploadimages".tr,style: titleMediumThick(context),),
                          SizedBox(height: 5,),
                          Obx(() => controller.images.length == 1?InkWell(
                            onTap: ()async{
                              File? file = await showImagePicker(context);
                              if(file != null){
                                controller.images.insert(controller.images.length-1,file.path);
                              }
                            },
                            child: DottedBorder(
                                color: Theme.of(context).colorScheme.onBackground,
                                strokeWidth: 1,
                                borderType: BorderType.RRect,
                                radius: Radius.circular(10),
                                child: SizedBox(
                                    height: 140,
                                    child: Center(child: Icon(Icons.add,size: 30,),))),
                          ):
                          DottedBorder(
                              strokeWidth: 1,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(10),
                              color: Theme.of(context).colorScheme.onBackground,
                              child: SizedBox(height: 140,
                                width: Get.width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  reverse: true,
                                  child: Row(
                                    children: controller.images.map((element){
                                      if(element == "add"){
                                        return InkWell(
                                          onTap: ()async{
                                            File? file = await showImagePicker(context);
                                            if(file != null){
                                              controller.images.insert(controller.images.length-1,file.path);
                                            }
                                          },
                                          child: Container(
                                            width: 140,
                                            height: 140,
                                            alignment: Alignment.center,
                                            child: Icon(Icons.add,color: Theme.of(context).colorScheme.onBackground,),
                                          ),
                                        );
                                      }
                                      return Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.file(File(element),width: 150,height: 140,fit: BoxFit.cover,)),
                                            IconButton(onPressed: (){
                                              controller.images.removeWhere((e) => e == element);
                                            }, icon: Icon(Icons.cancel))
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              )),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            minLines: 7,
                            maxLines: 10,
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"vehiclerepairdetailhinttxt".tr),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.center,
                            child: largeButton(context, "CONFIRM".tr, () => {
                            }),
                          ),
                        ],
                      ),
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