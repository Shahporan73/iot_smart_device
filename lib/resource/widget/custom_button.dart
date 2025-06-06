
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/App_Colors.dart';

// round_button.dart

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isLoading;
  final double width;
  final double padding_vertical;
  final double borderRadius;
  final Color? buttonColor;
  final double fontSize;
  final BoxBorder? border;
  final Color? titleColor;
  final Widget? widget;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isLoading = false,
    this.width = double.infinity,
    this.padding_vertical = 12.0,
    this.borderRadius = 50,
    this.buttonColor,
    this.border,
    this.titleColor = Colors.white,
    this.widget,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return  isLoading
        ? Center(
      child: SpinKitCircle(
        size: 32,
        color: AppColors.btnColor,
      ),
    )
        :  InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor ??  AppColors.btnColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
        ),
        width: width,
        padding: EdgeInsets.symmetric(vertical: padding_vertical),
        child: widget ??
            Text(
              title,
              style: GoogleFonts.dmSans(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                color: titleColor,
              ),
            ),
      ),
    );
  }
}

// isLoading == true ? Center(child: const CircularProgressIndicator(color: Colors.green,)) :