import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mimax/App_Routes/Routes.dart';
import 'package:mimax/Utils/AppStyles/AppStyles.dart';

Widget homeScreenCard1(BuildContext context,String title,String price, String imgsrc){
  return InkWell(
    onTap: (){
      Get.toNamed(Routes.VehicleDetails);
    },
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text(title,style: titleMediumThick(context))),
              Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Image.asset(imgsrc,fit: BoxFit.contain,),
              )
            ],
          ),
          SizedBox(height: 20,),
          Expanded(child: Text("\$$price",style: titleMediumThin(context)))
        ],
      ),
    ),
  );
}

Widget homeScreenViewCard(BuildContext context, Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("View New Car Price",style: headingSmall(context),),
          Icon(Icons.visibility_off_outlined,color: Theme.of(context).colorScheme.onBackground,size: 35,)
        ],
      ),
    ),
  );
}
Widget homeScreenCard3(BuildContext context,String title,String done,String pending, String imgsrc, Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text(title,style: titleMediumThick(context))),
              Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Image.asset(imgsrc,fit: BoxFit.contain,),
              )
            ],
          ),
          SizedBox(height: 20,),
          Expanded(child: Text("$done Done",style: titleMediumThin(context))),
          Expanded(child: Text("$pending Pending",style: titleMediumThin(context))),
        ],
      ),
    ),
  );
}



Widget homeScreenCard2(BuildContext context,String title,String price, String imgsrc){
  Size size = MediaQuery.of(context).size;
  return Stack(
    alignment: Alignment.topRight,
    children: [
      Container(
        width: 35,
        height: 35,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(50),
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).colorScheme.onBackground
          )
        ),
        alignment: Alignment.center,
        child: Image.asset(imgsrc,fit: BoxFit.contain,color: Theme.of(context).colorScheme.onBackground,),
      ),
      ClipPath(
        clipper: MyClipper(),
        child: ClipPath(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.shadow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(title,style: titleMediumThick(context),),),
                    SizedBox(width: size.width*0.10,)
                  ],
                ),
                SizedBox(height: 40,),
                Expanded(child: Text("\$$price",style: titleMediumThin(context)))
              ],
            ),
          ),
          clipper: MyClipper(),
        ),
      )
    ],
  );
}


class MyClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width*0.60, 0);
    path.quadraticBezierTo(size.width*0.70, 0, size.width*0.70, size.height*0.20);
    path.quadraticBezierTo(size.width*0.70, size.height*0.30, size.width*0.80, size.height*0.30);
    path.quadraticBezierTo(size.width, size.height*0.30, size.width, size.height*0.40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }

}


Widget homeScreenmenuCard(BuildContext context,String image,String name,String model,bool isSelected){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      border: isSelected?Border.all(
        color: Theme.of(context).colorScheme.onBackground,
      ):null,
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.shadow,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
            child: CachedNetworkImage(
              imageUrl: image,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            )),
        SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: labelSmallThin(context),maxLines: 1,overflow: TextOverflow.ellipsis,),
              Text(model,style: headingSmall(context),maxLines: 1,overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
        Radio(value: true, groupValue: isSelected, onChanged: (v){print(v);},activeColor: Theme.of(context).colorScheme.onBackground,
          fillColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),)
      ],
    ),
  );
}


Widget homeScreenDetailWidget(BuildContext context, String imgSrc,String detail){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Image.asset(imgSrc,width: 30,height: 30,color: imgSrc =="assets/icons/color.png"?null:Theme.of(context).colorScheme.onBackground,),
        SizedBox(width: 10,),
        Expanded(child: Text(detail,style: headingSmall(context),))
      ],
    ),
  );
}

Widget homeScreenOtherDetailWidget(BuildContext context, String title, String txt,String unit){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: Text(title,style: headingSmallBold(context),)),
        Expanded(child: Text("$txt $unit",style: headingSmall(context),)),

      ],
    ),
  );
}


