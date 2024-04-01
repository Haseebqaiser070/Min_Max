import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Presentation/LoginScreen/Controller/LoginScreenController.dart';
import 'package:mimax/Utils/AppTextFieldStyle/AppTextFieldStyle.dart';

import '../../../Utils/AppStyles/AppStyles.dart';

class LoginScreen extends GetView<LoginScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: Get.width,
              padding: EdgeInsets.only(right: 50),
                child: Image.asset('assets/images/loginScreenCarbg1.png',fit: BoxFit.cover,color: Color.fromARGB(
                    255, 110, 109, 109))),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
                width: Get.width,
                padding: EdgeInsets.only(right: 50),
                child: Image.asset('assets/images/loginScreenCarbg2.png',fit: BoxFit.cover,color: Color.fromARGB(255, 110, 109, 109),)),
          ),
          Container(
            width: Get.width,
            height: Get.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 130,),
                    Text("loginScreentitle".tr,style: titleLargeThick(context),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("loginScreenEmailtxtfieldtitle".tr, style: labelMediumThin(context),),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: TextFormField(
                              decoration: appTextFieldDecoration(context),
                              cursorColor: Colors.black,
                            ),
                          ),
                          Text("loginScreenPasswordtxtfieldtitle".tr, style: labelMediumThin(context),),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: TextFormField(
                              decoration: appTextFieldDecoration(context),
                              cursorColor: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Login As Admin",style: headingSmall(context),),
                              Obx(() => Transform.scale(
                                scale: 0.8,
                                child: Checkbox(value: controller.isAdmin.value,
                                    activeColor: Theme.of(context).colorScheme.onBackground,
                                    checkColor: Theme.of(context).colorScheme.background,
                                    onChanged: (v){
                                      controller.isAdmin.value = v!;
                                    }),
                              ),),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Align(
                            alignment: Alignment.center,
                            child: largeButton(context, "loginBtntxt".tr, () => {
                              if(controller.isAdmin.value){
                                Get.offAllNamed(Routes.RootScreen)
                              }
                            }),
                          ),
                          SizedBox(height: 70,),
                          Text("loginScreenNoteTxt".tr,style: labelSmall(context),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}