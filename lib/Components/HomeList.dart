import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class HomeList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:  const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
      child: GridView.builder(
       scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,childAspectRatio: MediaQuery.of(context).size.height /700,crossAxisSpacing: ScreenUtil().setWidth(9)),
        itemBuilder: (_, index) =>Container(
         child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: ScreenUtil().setHeight(104),
            width: ScreenUtil().setWidth(196),
           child: Image.asset('assets/images/david 1.png'),
          ),
          SizedBox(height: ScreenUtil().setHeight(10),),
          Text("MEN",style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
            fontSize: 19
          ),),
          SizedBox(height: ScreenUtil().setHeight(10),)
        ],
      ),
  ),
      itemCount: 6,

   
      ),
    );
  }
}