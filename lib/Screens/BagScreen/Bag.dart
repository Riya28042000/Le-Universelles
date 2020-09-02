import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Bag extends StatefulWidget {
  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("Basket",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1.copyWith(fontSize:25),),
       backgroundColor: _theme.appBarTheme.color
     ),
    body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: ScreenUtil().setHeight(110),),
          Align(
            alignment: Alignment.center,
             child: Container(
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(color:AppColors.text5,width: 5.0)
               ),
               height: ScreenUtil().setHeight(201),
               width: ScreenUtil().setWidth(201),
               child: Center(
                 child: Container(
                      height: ScreenUtil().setHeight(89),
            width: ScreenUtil().setWidth(89),
                   child: Image.asset('assets/images/shopping-cart(1) 1.png', fit: BoxFit.fill,)),
               ),
             ),
           ),
                     SizedBox(height: ScreenUtil().setHeight(42),),
                     Align(child: Text("Your Shopping basket is Empty",style: _theme.textTheme.headline4.copyWith(fontSize: 24),), alignment: Alignment.center,),
                        SizedBox(height: ScreenUtil().setHeight(14),),
                          Align(child: Text("Time to Shop!",style: _theme.textTheme.headline2.copyWith(fontSize: 19, color: AppColors.text5),), alignment: Alignment.center,),
                       SizedBox(height: ScreenUtil().setHeight(32),),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
                         child: BlackButton(buttonText: "START SHOPPING"),
                       ),
                                 SizedBox(height: ScreenUtil().setHeight(42),), 
         ],
       ),      
    ),
    );
  }
}