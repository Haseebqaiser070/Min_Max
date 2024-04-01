import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Presentation/VehicleSale/Controller/VehicleSaleController.dart';
import 'package:mimax/Utils/AppDropdownButton/AppDropdownButton.dart';
import 'package:mimax/Utils/AppNavigationButtons/AppNavigationButtons.dart';

import '../../../Utils/AppImagePicker/AppImagePicker.dart';
import '../../../Utils/AppStyles/AppStyles.dart';
import '../../../Utils/AppTextFieldStyle/AppTextFieldStyle.dart';

class VehicleSale extends GetView<VehicleSaleController>{
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    circularBackArrow(context, () => {
                      Get.back()
                    }),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 10),
                    //   child: const CircleAvatar(
                    //     radius: 20,
                    //     backgroundImage: AssetImage(("assets/images/profileimg.jpg")),
                    //   ),
                    // ),
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
                          Text("vehiclesaletitle".tr,style: headingLarge(context),),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListTile(
                                  dense: true,
                                  leading: Obx(() => Radio(
                                    value: "sale",
                                    groupValue: controller.currentSaleType.value,
                                    onChanged: (v){
                                      print(v.toString());
                                      controller.currentSaleType.value = v.toString();},
                                    activeColor: Theme.of(context).colorScheme.onBackground,
                                    fillColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
                                  ),),
                                  title: Text("vehiclesaleforsaletxt".tr,style: TextStyle(fontSize: 16),),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  dense: true,
                                  leading: Obx(() => Radio(
                                    value: "trade",
                                    groupValue: controller.currentSaleType.value,
                                    onChanged: (v){
                                      print(v.toString());
                                      controller.currentSaleType.value = v.toString();},
                                    activeColor: Theme.of(context).colorScheme.onBackground,
                                    fillColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
                                  ),),
                                  title: Text("vehiclesalefortradetxt".tr,style: TextStyle(fontSize: 16),),

                                ),
                              ),


                            ],
                          ),
                          SizedBox(height: 10,),
                          Text("vehiclesaleuploadimages".tr,style: titleMediumThick(context),),
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
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Actual Price".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Sale Price".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Repqire Cost".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Plate Number".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Brand Name".tr),
                          ),
                          SizedBox(height: 10,),
                          Text("Vehicle Type",style: headingSmallBold(context),),
                          SizedBox(height: 1,),
                          appDropDownButton(context, controller.vehicleTypeValue, controller.vehicleTypeItems),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Chassis Number".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Car body type".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Color".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Places".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"In Front".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Curb Weight".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Master Number".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Aproval Type".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Displacement in cm\u2083".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Performance in kw".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Crube Weight".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Placing on the market".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Payload/fifth load".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Total Weight in kg".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Weight of the train in kg".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Towing Capacity in kg".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Roof load in kg".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Minimission Code".tr),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            minLines: 6,
                            maxLines: 8,
                            cursorColor: Theme.of(context).colorScheme.onBackground,
                            decoration: appTextFieldDecorationwithBorder(context,"Further Detils".tr),
                          ),





                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.center,
                            child: largeButton(context, "confirmBtntxt".tr, () => {
                              Get.toNamed(Routes.VehicleRepairDetail)
                            }),
                          ),
                          SizedBox(height: 40,),
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