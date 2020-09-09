import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class DeliveryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
       height:ScreenUtil().setHeight(80.26), 
           
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: ScreenUtil().setWidth(24.53)),
          shrinkWrap: true,
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              height: ScreenUtil().setHeight(80.26),
              width: ScreenUtil().setWidth(111.48),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
                child: Image.asset('assets/images/fedex.png',fit: BoxFit.fill,)
            );
          }),
    );
  }
}