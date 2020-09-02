import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  
  @override
  Widget build(BuildContext context) {
  final _theme= Theme.of(context);
    return Scaffold(
          backgroundColor: AppColors.text1,
          body: SingleChildScrollView(
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:ScreenUtil().setHeight(105)),
                Container(
                  height: ScreenUtil().setHeight(213),
                  width: ScreenUtil().setWidth(208),
                  child: Image.asset('assets/images/bags.png',fit: BoxFit.fill,),
                ),
       SizedBox(height:ScreenUtil().setHeight(68)),
              Text("Success!",style: _theme.textTheme.headline4.copyWith(fontSize:34),),
                SizedBox(height:ScreenUtil().setHeight(12)),
                  Text("Your order will be delivered soon,",style: _theme.textTheme.headline6),
                  Text("Thank you for choosing our app!",style: _theme.textTheme.headline6),
                   SizedBox(height:ScreenUtil().setHeight(49)),
                   Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                   child: BlackButton(buttonText: 'CONTINUE SHOPPING'),
                   ),
                    SizedBox(height:ScreenUtil().setHeight(186)),
                     Text(
                    "Le Universelles",
                    style: _theme.appBarTheme.textTheme.headline1,
                  ),
                  SizedBox(height:ScreenUtil().setHeight(97)),
              ],
            ),
          ),
          
    );
  }
}