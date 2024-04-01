import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimax/Utils/AppImagePicker/AppImagePicker.dart';
import 'package:mimax/Utils/AppNavigationButtons/AppNavigationButtons.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../SplashScreen/Widgets/SplashScreenWidget.dart';
import 'dart:math' as math;

import '../Controller/QRScanScreenController.dart';
class QRScanScreen extends GetView<QRScanScreenController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerLeft,
                    child: circularBackArrow(context, () => {Get.back()})),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("QRScanScreentitleScan".tr,style: titleLargeThin(context),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("QRScanScreentitleyourcard".tr,style: titleLargeThick(context),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("QRScanScreentitletxt".tr,style: labelSmall(context),)
                  ],
                ),
                SizedBox(height: 30,),
                // Container(
                //   width: Get.width,
                //   height: 300,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     border: Border.all(
                //       color: Colors.white
                //     )
                //   ),
                //   child: MobileScanner(
                //     controller: controller.cameraController,
                //     onDetect: (capture){
                //       final Uint8List? image = capture.image;
                //       print(image.toString());
                //     },
                //   ),
                // ),
                InkWell(
                  onTap: ()async{
                    File? file = await showImagePicker(context);
                    if(file != null){
                      print(file.path);
                      controller.imageSrc.value = file.path;
                    }
                  },
                  child: Obx(()=> controller.imageSrc.isEmpty?Container(
                    width: Get.width,
                    // height: 300,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/QRScanScreenFrame.png",fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,),
                        Image.asset("assets/images/QRScanScreenpages.png",fit: BoxFit.contain,),
                        Padding(
                            padding: EdgeInsets.all(45),
                            child: Image.asset("assets/images/QRScanScreenBar.png",fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,)),
                      ],
                    ),
                  ):Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SizedBox(
                        width: Get.width,
                        child: Image.file(File(controller.imageSrc.value)),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.background
                        ),
                        child: Icon(Icons.edit,size: 20,color: Theme.of(context).colorScheme.onBackground,),
                      )
                    ],
                  )),
                ),
                SizedBox(height: 50,),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Image.asset("assets/images/scanClick.png",width: 120, height: 120,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Transform.rotate(
                        angle: -math.pi / 8,
                        child: Text("QRScanScreentitletxticon".tr,style: GoogleFonts.lato(
                          color: Theme.of(context).colorScheme.onBackground
                        ),textAlign: TextAlign.center,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}