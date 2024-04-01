import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../AppStyles/AppStyles.dart';
Widget appDropDownButton(BuildContext context, RxString dowpDownValue,List<String> items){
  return Obx(()=>DropdownButtonFormField(
    // underline: SizedBox(),
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.shadow),
        borderRadius: BorderRadius.circular(10)
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.onBackground),
          borderRadius: BorderRadius.circular(10)
      ),
    ),
    // Initial Value
    value: dowpDownValue.value,

    // Down Arrow Icon
    icon: const Icon(Icons.keyboard_arrow_down),
    style: headingSmall(context),
    // Array list of items
    items: items.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    },).toList(),
    onChanged: (String? newValue) {
      dowpDownValue.value = newValue!;
      print(dowpDownValue.value);
    },

  ));
}