import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget notificationWidget(BuildContext context, String time,String img,String title,String txt,){
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stack(
            //   alignment: Alignment.topRight,
            //   children: [
            //     // Padding(
            //     //   padding: EdgeInsets.all(5),
            //     //   child: CustomImageView(
            //     //     imagePath: img,
            //     //     height: 40,
            //     //     width: 40,
            //     //     radius: BorderRadius.circular(
            //     //       10,
            //     //     ),
            //     //     alignment: Alignment.topCenter,
            //     //   ),
            //     // ),
            //     Container(
            //       width: 15,
            //       height: 15,
            //       decoration: BoxDecoration(
            //           color: Theme.of(context).colorScheme.primary,
            //           borderRadius: BorderRadius.circular(50)
            //       ),
            //     )
            //   ],
            // ),
            SizedBox(width: 20,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(time,style: GoogleFonts.mulish(
                  textStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                  ),
                ),),
                SizedBox(height: 15,),
                Text(title,
                  style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                SizedBox(height: 15,),
                Text(txt,style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    )
                ),),
              ],
            ))
          ],
        ),
      ),
      Divider(color: Theme.of(context).colorScheme.onBackground,thickness: 1,)
    ],
  );
}