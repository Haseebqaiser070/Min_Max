import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleLargeThick(BuildContext context){
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w600,
      color: Theme.of(context).colorScheme.onBackground,
    )
  );
}
TextStyle titleLargeThin(BuildContext context){
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w300,
      color: Theme.of(context).colorScheme.onBackground,
    )
  );
}
TextStyle titleMediumThin(BuildContext context){
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 28,
          letterSpacing: 1,
          color: Theme.of(context).colorScheme.onBackground,
      )
  );
}
TextStyle titleMediumThick(BuildContext context){
  return GoogleFonts.leagueGothic(
      textStyle: TextStyle(
          fontSize: 23,
          letterSpacing: 1,
          color: Theme.of(context).colorScheme.onBackground,
          // fontWeight: FontWeight.w600
      )
  );
}

TextStyle labelSmall(BuildContext context){
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 12,
      letterSpacing: 2,
      color: Theme.of(context).colorScheme.onBackground,
    )
  );
}
TextStyle labelMediumThin(BuildContext context){
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 20,
      // letterSpacing: 3,
      color: Theme.of(context).colorScheme.onBackground,
      height: 2
    )
  );
}
TextStyle labelSmallThin(BuildContext context){
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 18,
      letterSpacing: 1,
      color: Theme.of(context).colorScheme.onBackground,
    )
  );
}


Widget smallButton(BuildContext context,String txt,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      alignment: Alignment.center,
      child: Text(txt,style: GoogleFonts.lato(
        textStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 14,
          fontWeight: FontWeight.w700
        )
      ),),
    ),
  );
}
Widget largeButton(BuildContext context,String txt,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      alignment: Alignment.center,
      child: Text(txt,style: GoogleFonts.leagueGothic(
        textStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: 2
        )
      ),),
    ),
  );
}
Widget largeButtonSameTheme(BuildContext context,String txt,Function()? fnc){
  return InkWell(
    onTap: fnc,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      alignment: Alignment.center,
      child: Text(txt,style: GoogleFonts.leagueGothic(
        textStyle: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: 2
        )
      ),),
    ),
  );
}


TextStyle headingSmall(BuildContext context){
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 14,
        color: Theme.of(context).colorScheme.onBackground,
      )
  );
}
TextStyle headingSmallBold(BuildContext context){
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onBackground,
      )
  );
}
TextStyle headingLarge(BuildContext context){
  return GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).colorScheme.onBackground,
      )
  );
}