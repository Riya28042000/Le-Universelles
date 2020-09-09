import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
       height:ScreenUtil().setHeight(427), 
           
      child: Swiper(
    
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              height: ScreenUtil().setHeight(427),
              width: ScreenUtil().setWidth(302),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
                child: Image.asset('assets/images/image (1).png',fit: BoxFit.fill,)
            );
          }),
    );
  }
}