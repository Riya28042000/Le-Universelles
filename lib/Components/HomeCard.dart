import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class HomeCard extends StatefulWidget {
  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
   return Container(
       height:ScreenUtil().setHeight(299), 
           
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: ScreenUtil().setWidth(17)),
          shrinkWrap: true,
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              height: ScreenUtil().setHeight(299),
              width: ScreenUtil().setWidth(353),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
                child: Image.asset('assets/images/homepage.png',fit: BoxFit.fill,)
            );
          }),
    );
  }
}