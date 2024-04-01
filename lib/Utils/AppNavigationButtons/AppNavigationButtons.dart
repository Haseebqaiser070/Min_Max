import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget circularBackArrow(BuildContext context,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.shadow,
        borderRadius: BorderRadius.circular(50)
      ),
      alignment: Alignment.center,
      child: Icon(Icons.arrow_back_sharp),
    ),
  );
}

Widget circularNotificationButton(BuildContext context,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.circular(50)
      ),
      alignment: Alignment.center,
      child: Icon(Icons.notifications_active_outlined),
    ),
  );
}
Widget circularAddButton(BuildContext context,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.circular(50)
      ),
      alignment: Alignment.center,
      child: Icon(Icons.add),
    ),
  );
}
Widget circularMenuButton(BuildContext context,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.circular(50)
      ),
      alignment: Alignment.center,
      child: Icon(Icons.sort),
    ),
  );
}
Widget circularChangeViewButton(BuildContext context,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.circular(50)
      ),
      alignment: Alignment.center,
      child: Icon(Icons.view_module),
    ),
  );
}
Widget circularFilterButton(BuildContext context,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.circular(50)
      ),
      alignment: Alignment.center,
      child: Icon(Icons.filter_list_outlined),
    ),
  );
}