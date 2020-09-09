import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class CreditCardScreen extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCardScreen> {
  bool isCheck = false;
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
     return Container(
              
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: ScreenUtil().setHeight(20)),
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              height: ScreenUtil().setHeight(262),
              width: ScreenUtil().setWidth(343),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            //  padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
Container(
 height: ScreenUtil().setHeight(216),
              width: ScreenUtil().setWidth(343),
              decoration: BoxDecoration(
                color: AppColors.text2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:ScreenUtil().setHeight(34)),
                Padding(
              padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                  child: Container(
                    height: ScreenUtil().setHeight(24),
                    width: ScreenUtil().setWidth(32),
                    decoration: BoxDecoration(
                      color: AppColors.text6,
                      borderRadius: BorderRadius.circular(5),
                    ),

                  ),
                ),
    SizedBox(height:ScreenUtil().setHeight(29)),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
      child: Text("*** *** ***3947",style: _theme.textTheme.headline2.copyWith(fontSize: 24, color: AppColors.text5, fontStyle: FontStyle.italic),),
    ),
     SizedBox(height:ScreenUtil().setHeight(43)),
     Padding(
       padding: const EdgeInsets.only(left:LaUniversellesConstants.horizontalPadding,right:LaUniversellesConstants.horizontalPadding/2),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Card Holder Name",style: _theme.textTheme.headline2.copyWith(color:AppColors.text5),),
         SizedBox(width:ScreenUtil().setWidth(60)),
                Text("Expiry Date",style: _theme.textTheme.headline2.copyWith(color:AppColors.text5),),
             SizedBox(width:ScreenUtil().setWidth(60)),
                Container(
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(32),
                  
                  child: Image.asset('assets/images/Group.png',fit: BoxFit.fill,))
         ],
       ),
     ),
      Padding(
       padding: const EdgeInsets.only(left:LaUniversellesConstants.horizontalPadding,right:LaUniversellesConstants.horizontalPadding/2),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Sharun Ravindran",style: _theme.textTheme.headline5.copyWith(color:AppColors.text1),),
         SizedBox(width:ScreenUtil().setWidth(35)),
                Text("05/23",style: _theme.textTheme.headline5.copyWith(color:AppColors.text1,fontStyle: FontStyle.italic),),
                  ],
       ),
     )
              ],
              )
),
    Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                    value: isCheck,
                                    activeColor: AppColors.text2,
                                    onChanged: (value) {
                                      setState(() {
                                        isCheck = value;
                                      });
                                    }),
                                SizedBox(
                                  width: ScreenUtil().setWidth(5),
                                ),
                                Text(
                                  "Use as default payment method",
                                  style: _theme.textTheme.headline5,
                                )
                              ],
                            ),
                  ],
                )
            );
          }),
    );
  }
}