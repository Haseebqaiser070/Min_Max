import 'package:flutter/material.dart';

InputDecoration appTextFieldDecoration(BuildContext context){
  return InputDecoration(
    border: InputBorder.none,
    isDense: true,
  );
}

InputDecoration appTextFieldDecorationwithBorder(BuildContext context,String hint){
  return InputDecoration(
      hintText: hint,
      label: Text(hint),
      alignLabelWithHint: true,
      labelStyle: TextStyle(
        color: Theme.of(context).colorScheme.onBackground
      ),
      border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onBackground,
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onBackground,
          ),
          borderRadius: BorderRadius.circular(10)
      ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.shadow,
        ),
        borderRadius: BorderRadius.circular(10)
    ),
  );
}