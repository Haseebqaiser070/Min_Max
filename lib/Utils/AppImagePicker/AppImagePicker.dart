import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';


Future showImagePicker(BuildContext context)async{
  File? file;
  await showModalBottomSheet(context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context){
    return Container(
      height: 200,
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Please Choose One.",style: GoogleFonts.mulish(
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.onBackground
            )
          ),),
          ListTile(
            onTap: ()async{
              final XFile? photo = await ImagePicker().pickImage(source: ImageSource.camera);
              if(photo != null)
              file = File(photo.path);
              Get.back();
            },
            title: Text("Camera",style: GoogleFonts.mulish(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onBackground
                )
            ),),
            trailing: Icon(Icons.camera_alt_outlined,color: Theme.of(context).colorScheme.onBackground),
          ),
          ListTile(
              onTap: ()async{
                final XFile? photo = await ImagePicker().pickImage(source: ImageSource.gallery);
                if(photo != null)
                  file = File(photo.path);
                Get.back();
              },
              title: Text("Gallery",style: GoogleFonts.mulish(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.onBackground
                  )
              ),),
              trailing: Icon(Icons.image,color: Theme.of(context).colorScheme.onBackground)
          ),
        ],
      ),
    );
  });

  if(file != null){
    return file;
  }

}