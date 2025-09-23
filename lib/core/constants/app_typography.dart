import 'package:flutter/material.dart';

class AppTextSyle {

  AppTextSyle._();

  // Heading 4
  static TextStyle heading4Regular(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 32,
    fontWeight: FontWeight.w400,  // w600 means semibold
  );

  static TextStyle heading4Medium(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w500,  // w600 means semibold
  );

  static TextStyle heading4SemiBold(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w600,  // w600 means semibold
  );

  static TextStyle heading4Bold(Color? selectColor) => TextStyle(
    height: 1.25,
    color: selectColor ?? Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w700,  // w600 means semibold
  );


  //body
   static TextStyle body15Regular({Color? selectColor}) => TextStyle(
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle body15Medium({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

   static TextStyle body15semiBold({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

    static TextStyle body15Bold({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 15,
    fontWeight: FontWeight.w800,
  );


  static TextStyle body16SemiBold({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );


  static TextStyle body16Bold({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 16,
    fontWeight: FontWeight.w800,
  );

  
  
  static TextStyle min12Medium({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ); 
  
  static TextStyle min12SemiBold({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static TextStyle min12Bold({Color? selectColor}) => TextStyle(
    height: 1.2,
    color: selectColor ?? Color(0xFF591A0E),
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );


}