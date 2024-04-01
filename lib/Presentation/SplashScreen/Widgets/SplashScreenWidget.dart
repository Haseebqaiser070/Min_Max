import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget smallCircularImage(BuildContext context, String imgsrc){
  return Container(
    width: 110,
    height: 110,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.shadow,
      borderRadius: BorderRadius.circular(100)
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
        child: Image.asset(imgsrc,fit: BoxFit.cover,)),
  );
}

Widget mediumCircularImage(BuildContext context, String imgsrc){
  return Container(
    width: 120,
    height: 120,
    padding: EdgeInsets.all(7),
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.circular(100)
    ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(imgsrc,fit: BoxFit.cover,)),
  );
}

Widget largeCircularImage(BuildContext context, String imgsrc){
  return Container(
    width: 140,
    height: 140,
    padding: EdgeInsets.all(7),
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.circular(100)
    ),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(imgsrc,fit: BoxFit.cover,)),
  );
}