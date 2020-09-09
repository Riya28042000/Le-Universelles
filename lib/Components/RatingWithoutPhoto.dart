import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingWithoutPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
     // height: ScreenUtil().setHeight(313),
      padding: EdgeInsets.symmetric(
          horizontal: LaUniversellesConstants.horizontalPadding / 2),
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: ScreenUtil().setHeight(19)),
          shrinkWrap: true,
          itemCount: 3,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              height: ScreenUtil().setHeight(313),
              width: ScreenUtil().setWidth(327),
              child: Stack(
                children: [
                  Container(
                     height: ScreenUtil().setHeight(313),
              width: ScreenUtil().setWidth(327),
              
                    child: Padding(
                      padding: const EdgeInsets.only(top:LaUniversellesConstants.horizontalPadding/2, left:LaUniversellesConstants.horizontalPadding/2,bottom: LaUniversellesConstants.horizontalPadding/2),
                      child: Container(
                          height: ScreenUtil().setHeight(297),
                          width: ScreenUtil().setWidth(311),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.text1,
                              border: Border.all(color:AppColors.text5, width: 0.25)
                              ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: ScreenUtil().setHeight(24),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: LaUniversellesConstants
                                            .horizontalPadding /
                                        2),
                                child: Text(
                                  'Helene Moore',
                                  style: _theme.textTheme.headline5
                                      .copyWith(fontStyle: FontStyle.italic),
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(8.68),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: LaUniversellesConstants
                                            .horizontalPadding /
                                        2),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SmoothStarRating(
                                      rating: 4,
                                      color: AppColors.text6,
                                      borderColor: AppColors.text6,
                                      isReadOnly: false,
                                      size: 15,
                                      filledIconData: Icons.star,
                                      halfFilledIconData: Icons.star_half,
                                      defaultIconData: Icons.star_border,
                                      starCount: 5,
                                      allowHalfRating: true,
                                      spacing: 2.0,
                                      onRated: (value) {
                                        print("rating value -> $value");
                                        // print("rating value dd -> ${value.truncate()}");
                                      },
                                    ),
                                    Spacer(),
                                    Text(
                                      'June 5, 2019',
                                      style: _theme.textTheme.headline2
                                          .copyWith(
                                              fontSize: 11,
                                              color: AppColors.text5),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(15),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: LaUniversellesConstants
                                            .horizontalPadding /
                                        2),
                                child: Text(
                                    'This dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7\" and 130 pounds. I am a 34 B chest. This dress would be too long for those who are short but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                                    style: _theme.textTheme.headline5,
                                   
                                    ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(10),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: LaUniversellesConstants
                                              .horizontalPadding /
                                          2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Helpful",
                                        style: _theme.textTheme.headline6
                                            .copyWith(
                      fontSize: 11,
                      color: AppColors.text5),
                                      ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.thumb_up,
                                            color: AppColors.text5,
                                            size: 13,
                                          ),
                                          onPressed: null)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                    ),
                  ),
                   Positioned(
                          left:4,
                          top:0,
                          child: ClipRRect(
     borderRadius: BorderRadius.circular(30.0),
     child: Image.asset(
       'assets/images/face.png',
        width: 30.0,
        height:30.0,
        fit: BoxFit.fill,
     ),
 ),
                        )
                ],
              ),
            );
          }),
    );
  }
}
