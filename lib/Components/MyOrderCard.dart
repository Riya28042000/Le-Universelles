import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Screens/MyOrderScreen/MyOrderDetail.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class MyOrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return     Container(
               padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: ScreenUtil().setHeight(26)),
                shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                 physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      height: ScreenUtil().setHeight(176.4),
                      width: ScreenUtil().setWidth(368.92),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: AppColors.text5, width: 0.25)),
                           
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: ScreenUtil().setHeight(20.44)),
                          Padding(
                           padding: const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding/2,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Order No 1947034',
                                  style: _theme.textTheme.headline6
                                      .copyWith(
                                          fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Text(
                                  '05-12-2019',
                                  style: _theme.textTheme.headline5
                                      .copyWith(
                                        
                                          color: AppColors.text5),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(9.35)),
                         Padding(
                           padding:const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding/2,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                                      'Tracking Number:',
                                      style: _theme.textTheme.headline5
                                          .copyWith(
                                            
                                              color: AppColors.text5),
                                    ),
                                    SizedBox(width: ScreenUtil().setWidth(5),),
                                     Text(
                                  'IW3475453455',
                                  style: _theme.textTheme.headline6
                                      .copyWith(
                                          fontWeight: FontWeight.w600),
                                ),
                            ],
                           ),
                           

                         ),
  Padding(
                           padding:const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding/2,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                                      'Quantity:',
                                      style: _theme.textTheme.headline5
                                          .copyWith(
                                            
                                              color: AppColors.text5),
                                    ),
                                    SizedBox(width: ScreenUtil().setWidth(5),),
                                     Text(
                                  '3',
                                  style: _theme.textTheme.headline6
                                      .copyWith(
                                          fontWeight: FontWeight.w600),
                                ),
                            ],
                           ),
                           

                         ),
  Padding(
                           padding:const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding/2,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                                      'Total Amount:',
                                      style: _theme.textTheme.headline5
                                          .copyWith(
                                            
                                              color: AppColors.text5),
                                    ),
                                    SizedBox(width: ScreenUtil().setWidth(5),),
                                     Text(
                                  '112\$',
                                  style: _theme.textTheme.headline6
                                      .copyWith(
                                          fontWeight: FontWeight.w600),
                                ),
                            ],
                           ),
                           

                         ),
                         SizedBox(height:ScreenUtil().setHeight(8.65)),
                       Padding(padding: 
                       const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding/2,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyOrderDetail()));
                                          },
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      border: Border.all(color:AppColors.text2),
                                                                                    ),
                                            height: ScreenUtil().setHeight(38.72),
                                            width: ScreenUtil().setWidth(105.41),
                                            child: Center(
                                              child: Text(
                                                'Details',style:_theme.textTheme.headline5.copyWith(fontWeight:FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text('Delivered',style:_theme.textTheme.headline5.copyWith(fontWeight:FontWeight.w500,color: AppColors.text11),)
                                      ],
                                    ),
                       ),

                          SizedBox(height: ScreenUtil().setHeight(19)),
                          
                        ],
                      ),
                    );
                  }),
            );
  }
}