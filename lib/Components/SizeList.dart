import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class SizeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final  _theme= Theme.of(context);
    return Container(
        margin:  const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
      child: GridView.builder(
       scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,childAspectRatio: MediaQuery.of(context).size.height / 1300,crossAxisSpacing: ScreenUtil().setWidth(9)),
        itemBuilder: (_, index) =>Container(
                       height: ScreenUtil().setHeight(40),
                       width: ScreenUtil().setWidth(40),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         border: Border.all(color:AppColors.text5),
                         color:AppColors.text1
                       ),
                       child: Center(child:Text("XL",style: _theme.textTheme.headline6.copyWith(color:AppColors.text2),)),
                     ),
      )
    );
  }
}