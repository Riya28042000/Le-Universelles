import 'package:flutter/material.dart';
import 'package:le_universelles/Utils/AppColour.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal:7),
      alignment: Alignment.center,
      height: 64,
      width: 64,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(border: InputBorder.none, counterText: ''),
      ),
      decoration: BoxDecoration(border: Border.all(color: AppColors.text5,width: 0.5)),
    );
  }
}