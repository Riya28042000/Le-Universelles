import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class PromoCodeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final _theme= Theme.of(context);
    return     Container(
               padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: ScreenUtil().setHeight(26)),
                shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                 physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      height: ScreenUtil().setHeight(83.79),
                      width: ScreenUtil().setWidth(378.67),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: AppColors.text5, width: 0.25)),
                           
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                       Container(
                         height: ScreenUtil().setHeight(83),
                      width: ScreenUtil().setWidth(88.32),
                      decoration: BoxDecoration(
                         color: AppColors.text5,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: AppColors.text5, width: 0.25)),
                       ),
                       SizedBox(width:ScreenUtil().setWidth(10)),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Container(
                             width: ScreenUtil().setWidth(200),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text('Personal offer',style: _theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w500),),
                                 Spacer(),
                          Text('6 days remaining',style: _theme.textTheme.headline6.copyWith(fontSize:11,color: AppColors.text5),),
                               ],
                             ),
                           ),
                            Container(
                             width: ScreenUtil().setWidth(200),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text('mypersonalcode2020',style: _theme.textTheme.headline2.copyWith(fontSize: 11, )),
                             Spacer(),
                  Container(
height: ScreenUtil().setHeight(35),
width: ScreenUtil().setWidth(90),
decoration: BoxDecoration(
  color: AppColors.text2,
  
),
child: Center(child:Text('APPLY',style: _theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w500,color: AppColors.text1),)),                    
                  )
                               
                                                              ],
                             ),
                           ),
                   
                         ],
                                             )
                          
                        ],
                      ),
                    );
                  }),
            );
  }
}