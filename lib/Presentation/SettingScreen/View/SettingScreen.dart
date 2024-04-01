import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Presentation/SettingScreen/Controller/SettingScreenController.dart';

import '../../../Utils/AppImagePicker/AppImagePicker.dart';
import '../../../Utils/AppNavigationButtons/AppNavigationButtons.dart';
import '../../../Utils/AppStyles/AppStyles.dart';

class SettingScreen extends GetView<SettingScreenController>{
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     circularBackArrow(context, () => {
                //
                //     }),
                //     circularMenuButton(context, () => {})
                //   ],
                // ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.centerLeft,
                              child: Text("seetingscreensettingtitle".tr,style: titleLargeThick(context),)),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage("assets/images/profileimg.jpg"),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    showImagePicker(context);
                                  },
                                    child: Image.asset("assets/icons/edit.png",width: 25,height: 25,color: Theme.of(context).colorScheme.onBackground,)),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text("Jhon Doe", style: titleMediumThin(context),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Setting",style: labelSmallThin(context),),
                                Text("Options",style: labelSmallThin(context),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Text("Address",style: labelSmallThin(context),),
                                SizedBox(width: 20,),
                                Expanded(child: Text("Frankfurt am Main, Hessen",style: labelSmallThin(context),maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.right,)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Company Name",style: labelSmallThin(context),),
                                SizedBox(width: 20,),
                                Expanded(child: Text("Paragon Sports",style: labelSmallThin(context),maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.right,)),
                              ],
                            ),
                          ),
                          Divider(),
                          // SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("settingScreenlanguage".tr,style:  labelSmallThin(context),),
                          ),
                          Row(
                            children: [
                              Text("English",style:  labelSmallThin(context),),
                              Obx(() => Switch(
                                value: controller.isGerman.value,
                                onChanged: (v){
                                  controller.isGerman.value = v;
                                  controller.changeLanguage();
                                },
                                activeColor: Theme.of(context).colorScheme.onBackground,
                              ),),
                              Text("German",style:  labelSmallThin(context),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("settingScreenTheme".tr,style:  labelSmallThin(context),),
                          ),
                          Row(
                            children: [
                              Text("Light",style:  labelSmallThin(context),),
                              Obx(() => Switch(
                                value: controller.isDark.value,
                                onChanged: (v){
                                  controller.isDark.value = v;
                                  print(controller.isDark);
                                  controller.changeTheme();
                                },
                                activeColor: Theme.of(context).colorScheme.onBackground,
                              ),),
                              Text("Dark",style:  labelSmallThin(context),),
                            ],
                          ),
                          SizedBox(height: 50,),
                          InkWell(
                            onTap: (){
                              Get.offAllNamed(Routes.LoginScreen);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.logout,color: Theme.of(context).colorScheme.onBackground,),
                                Text("LogOut",style: labelSmallThin(context),),
                              ],
                            ),
                          )
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