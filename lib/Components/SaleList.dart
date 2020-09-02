import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SaleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: LaUniversellesConstants.horizontalPadding),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.height / 1480,
            crossAxisSpacing: ScreenUtil().setWidth(16)),
        itemBuilder: (_, index) => Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(200),
                width: ScreenUtil().setWidth(180),
                child: Stack(
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(170),
                      width: ScreenUtil().setWidth(180),
                      decoration: BoxDecoration(
                          color: AppColors.text5,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/product.png'),
                            fit: BoxFit.fitHeight,
                          )),
                    ),
                    Positioned(
                      left: 2,
                      bottom: 9,
                      child: Row(
                        children: [
                          SmoothStarRating(
                            rating: 3,
                            color: AppColors.text6,
                            borderColor: AppColors.text5,
                            isReadOnly: false,
                            size: 15,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              // print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                          SizedBox(width: 3),
                          Text(
                            "(3)",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              color: AppColors.text5,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 3,
                      bottom: 10,
                      child: Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                              color: AppColors.text5,
                              offset: Offset(0, 0),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ]),
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {},
                              splashColor: Colors.transparent,
                              icon: Icon(MdiIcons.heartOutline,
                                  size: 25, color: AppColors.text5),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(3),
              ),
              Text(
                "Mango",
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.text5),
              ),
              Text(
                "T-Shirt Spanish",
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: AppColors.text2),
              ),
              Text(
                "9\$",
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                    color: AppColors.text2),
              ),
            ],
          ),
        ),
        itemCount: 8,
      ),
    );
  }
}
