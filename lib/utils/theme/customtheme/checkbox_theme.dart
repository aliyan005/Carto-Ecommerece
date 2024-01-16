import 'package:ecommerece/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EcheckboxTheme{
  EcheckboxTheme._();
  static CheckboxThemeData lightCheckboxtheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Ecolors.primary;
      }else{
        return Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckboxtheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Ecolors.primary;
      }else{
        return Colors.transparent;
      }
    }),
  );
}