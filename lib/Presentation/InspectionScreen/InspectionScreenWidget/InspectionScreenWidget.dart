import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/AppStyles/AppStyles.dart';

Widget InspectionDetailCard(BuildContext context, String title, String status, String date, String time){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.shadow,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: titleMediumThick(context)),
            Text(status,style: labelMediumThin(context)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(date,style: labelMediumThin(context)),
            Text(time,style: labelMediumThin(context)),
          ],
        ),
      ],
    ),
  );
}