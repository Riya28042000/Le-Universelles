import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';

class Colour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext ctxt, int index) {
     return Padding(
padding: EdgeInsets.only(right:15),
       child: Container(
         
         height: ScreenUtil().setHeight(44),
         width: ScreenUtil().setWidth(44),
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           color: AppColors.text7
         ),
       ),
     );
    },
    
    shrinkWrap: true,
    itemCount: 5,
    scrollDirection: Axis.horizontal,
    );
  }
}