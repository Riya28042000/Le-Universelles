import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class BasketCard extends StatelessWidget {
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
                      height: ScreenUtil().setHeight(112.17),
                      width: ScreenUtil().setWidth(377.9),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: AppColors.text5, width: 0.25)),
                           
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       Container(
                         height: ScreenUtil().setHeight(112),
                      width: ScreenUtil().setWidth(95),
                      decoration: BoxDecoration(
                         color: AppColors.text5,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: AppColors.text5, width: 0.25)),
                       ),
                       SizedBox(width:ScreenUtil().setWidth(30.7)),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             width: ScreenUtil().setWidth(200),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text('Pullover',style: _theme.textTheme.headline6.copyWith(fontStyle: FontStyle.italic),),
                                 Spacer(),
                                 IconButton(icon: Icon(Icons.more_vert,color: AppColors.text5,size: 30,), onPressed: null)
                               ],
                             ),
                           ),
                            Container(
                             width: ScreenUtil().setWidth(180),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text('Color:',style: _theme.textTheme.headline2.copyWith(fontSize: 11, color: AppColors.text5)),
                               Text('Black',style: _theme.textTheme.headline2.copyWith(fontSize: 11)),
                               SizedBox(width:ScreenUtil().setWidth(10)),
                                   Text('Size:',style: _theme.textTheme.headline2.copyWith(fontSize: 11, color: AppColors.text5)),
                               Text('L',style: _theme.textTheme.headline2.copyWith(fontSize: 11)),
                               
                                                              ],
                             ),
                           ),
                         SizedBox(height:  ScreenUtil().setHeight(10),),
                             Container(
                             width: ScreenUtil().setWidth(180),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                              Container(
                                height: ScreenUtil().setHeight(39),
                                width: ScreenUtil().setWidth(39),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.text5, width: 0.25)
                                ),
                                child: Center(
                                  child: Icon(Icons.remove,color: AppColors.text5,),
                                ),
                              ),
                              SizedBox(width: ScreenUtil().setWidth(10),),
                               Text('1',style: _theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w500)),
                               SizedBox(width:ScreenUtil().setWidth(10)),
                                  Container(
                                height: ScreenUtil().setHeight(39),
                                width: ScreenUtil().setWidth(39),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                              border: Border.all(color: AppColors.text5, width: 0.25)
                                ),
                                child: Center(
                                  child: Icon(Icons.add,color: AppColors.text5,),
                                ),
                              ),
                               
                                                              ],
                             ),
                           )
                         ],
                                             )
                          
                        ],
                      ),
                    );
                  }),
            );
  }
}