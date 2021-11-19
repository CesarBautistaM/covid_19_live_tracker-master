import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xff0147ff);
Color kConfirmedColor = Color(0xff0b0340);
Color kActiveColor = Color(0xfff29727);
Color kRecoveredColor = Color(0xff33a650);
Color kDeathColor = Color(0xffbf0413);

LinearGradient kGradientShimmer = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Colors.grey[300],
    Colors.grey[100],
  ],
);

RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
Function mathFunc = (Match match) => '${match[1]}.';
