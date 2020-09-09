import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:le_universelles/Utils/la_universelles_icons_icons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Fav2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final _theme= Theme.of(context);
    return     Container(
               padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: ScreenUtil().setHeight(26)),
                shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                 physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      height: ScreenUtil().setHeight(104),
                      width: ScreenUtil().setWidth(369),
                
                           
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           Container(
                             height: ScreenUtil().setHeight(104),
                          width: ScreenUtil().setWidth(104),
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
                                     Text('LIME',style: _theme.textTheme.headline2.copyWith(fontSize:11, color: AppColors.text5),),
                                     Spacer(),
                                     IconButton(icon: Icon(Icons.cancel,color: AppColors.text5,size: 30,), onPressed: null)
                                   ],
                                 ),
                               ),
                               Text('Shirt',style: _theme.textTheme.headline6.copyWith(fontStyle:FontStyle.italic),),
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
                             Container(
                                 width: ScreenUtil().setWidth(180),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Text('32\$',style: _theme.textTheme.headline2.copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
                                  
                                   SizedBox(width:ScreenUtil().setWidth(10)),
                                   SmoothStarRating(
                                          rating: 4,
                                          color: AppColors.text6,
                                          borderColor: AppColors.text6,
                                          isReadOnly: false,
                                          size: 10,
                                          filledIconData: Icons.star,
                                          halfFilledIconData: Icons.star_half,
                                          defaultIconData: Icons.star_border,
                                          starCount: 5,
                                          allowHalfRating: true,
                                          spacing: 1.0,
                                          onRated: (value) {
                                            print("rating value -> $value");
                                            // print("rating value dd -> ${value.truncate()}");
                                          },
                                        ),
                                       Text('Size:',style: _theme.textTheme.headline2.copyWith(fontSize: 11, color: AppColors.text5)),
                               
                                   
                                                                  ],
                                 ),
                               ),
                             ],
                                                 )
                              
                            ],
                          ),
                        Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, ),
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColors.text2,
                            child: IconButton(
                              onPressed: () {},
                              splashColor: Colors.transparent,
                              icon: Icon(LaUniversellesIcons.vector,
                                  size: 20, color: AppColors.text1),
                            )),
                      ),
                    ),
                        ],
                      ),
                    );
                  }),
            );
  }
}