import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldSize25TextStyle() {
    return TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito-Bold',
        color: Colors.black87);
  }

  static TextStyle semiBoldSize20TextStyle() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito-Bold',
      color: Colors.black87,
    );
  }
  static TextStyle boldSize20TextStyle() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      fontFamily: 'Nunito-Bold',
      color: Colors.black87,
    );
  }

  static TextStyle semiBoldBlueSize20TextStyle() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      fontFamily: 'Nunito-Bold',
      color: Color.fromARGB(255, 76, 150, 99),
    );
  }

  static TextStyle semiBoldSize20HeightTextStyle() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito-Bold',
      color: Colors.black87,
      height: 1
    );
  }

  static TextStyle semiBoldSize18TextStyle() {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Nunito-Bold',
        color: Colors.black54,
        height: 1);
  }
  static TextStyle lightSemiBoldSize18TextStyle() {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Nunito-Bold',
        color: Colors.black38,
        height: 1);
  }
  static TextStyle lightSemiBoldSize18WhiteTextStyle() {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Nunito-Bold',
        color: Colors.white,
        height: 1);
  }

  static TextStyle semiBoldSize18GreenTextStyle() {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Nunito-Bold',
        color: Colors.green.shade500,
        height: 1);
  }
  static TextStyle semiBoldSize16GreenTextStyle() {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Nunito-Bold',
        color: Colors.green.shade500,
        height: 1);
  }

  static TextStyle semiBoldSize16TextStyle() {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Nunito-Bold',
        color: Colors.black38,
        height: 1);
  }

  static TextStyle boldSize16TextStyle() {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Nunito-Bold',
        color: Colors.black87,
        height: 1);
  }
  static TextStyle boldSize12TextStyle() {
    return TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w900,
        fontFamily: 'Nunito-Bold',
        color: Colors.black87,
        height: 1);
  }

  static BoxDecoration whiteBorderShadowBoxDecoration() {
    return BoxDecoration(
      color:  Color.fromARGB(255, 236, 236, 244),
      borderRadius: BorderRadius.circular(15),
    );
  }

  static BoxDecoration buttonBorderShadowBoxDecoration() {
    return BoxDecoration(
      color:  Color.fromARGB(255, 236, 236, 244),
      borderRadius: BorderRadius.circular(15),
    );
  }
  static BoxDecoration whiteBoxDecoration() {
    return BoxDecoration(
      color: Color.fromARGB(255, 215, 227, 239),
      borderRadius: BorderRadius.circular(30),
    );
  }

  static BoxDecoration greenShadowBoxDecoration() {
    return BoxDecoration(
      color: Color.fromARGB(255, 211, 227, 253),
      borderRadius: BorderRadius.circular(10),
      // Shadow to create elevation effect
    );
  }
  static BoxDecoration lightgreenShadowBoxDecoration() {
    return BoxDecoration(
      color: Color.fromARGB(255, 236, 242, 254),
      shape: BoxShape.circle,
      // Shadow to create elevation effect
     
    );
  }
}
