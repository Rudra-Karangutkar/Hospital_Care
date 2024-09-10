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
      color: Colors.green.shade800,
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
      color: Colors.grey.shade50,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), // Soft shadow
          spreadRadius: 5,
          blurRadius: 10,
          offset: Offset(0, 3), // Shadow position
        ),
      ],
      border: Border.all(
        color: Colors.grey.withOpacity(0.3), // Subtle border
        width: 1,
      ),
    );
  }
  static BoxDecoration whiteBoxDecoration() {
    return BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(30),
    );
  }

  static BoxDecoration greenShadowBoxDecoration() {
    return BoxDecoration(
      color: const Color.fromARGB(255, 147, 255, 168),
      borderRadius: BorderRadius.circular(10),
      // Shadow to create elevation effect
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15), // Subtle shadow color
          spreadRadius: 2, // Spread of the shadow
          blurRadius: 10, // Soften the shadow to blend with background
          offset: Offset(2, 4), // Position the shadow for elevation effect
        ),
      ],
    );
  }
  static BoxDecoration lightgreenShadowBoxDecoration() {
    return BoxDecoration(
      color: const Color.fromARGB(255, 235, 251, 240),
      shape: BoxShape.circle,
      // Shadow to create elevation effect
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15), // Subtle shadow color
          spreadRadius: 2, // Spread of the shadow
          blurRadius: 10, // Soften the shadow to blend with background
          offset: Offset(2, 4), // Position the shadow for elevation effect
        ),
      ],
    );
  }
}
