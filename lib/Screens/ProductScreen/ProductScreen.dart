import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/ProductCard.dart';
import 'package:le_universelles/Components/ProductSimilar.dart';
import 'package:le_universelles/Screens/RatingandReviewScreen/RatingReview.dart';
import 'package:le_universelles/Screens/VerificationScreen/Verification.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String _dropDownValue;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Product Name',
            style: _theme.appBarTheme.textTheme.headline1,
          ),
          actions: [
            IconButton(icon: Icon(Icons.share, size: 24), onPressed: null)
          ],
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: _theme.appBarTheme.color),
      backgroundColor: AppColors.text1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCard(),
            SizedBox(
              height: ScreenUtil().setHeight(33),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: ScreenUtil().setHeight(41),
                    width: ScreenUtil().setWidth(131),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: DropdownButton(
                          underline: SizedBox(),
                          hint: _dropDownValue == null
                              ? Text(
                                  'Size',
                                  style: _theme.textTheme.headline5
                                      .copyWith(fontWeight: FontWeight.w500),
                                )
                              : Text(
                                  _dropDownValue,
                                ),
                          isExpanded: true,
                          iconSize: 15.0,
                          items: ['XS', 'S', 'M', 'L', 'XL'].map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(
                                  val,
                                  style: _theme.textTheme.headline5
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                              () {
                                _dropDownValue = val;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),

  SizedBox(width:ScreenUtil().setWidth(18)),
                  Container(
                    height: ScreenUtil().setHeight(41),
                    width: ScreenUtil().setWidth(131),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: DropdownButton(
                          underline: SizedBox(),
                          hint: _dropDownValue == null
                              ? Text(
                                  'Colour',
                                  style: _theme.textTheme.headline5
                                      .copyWith(fontWeight: FontWeight.w500),
                                )
                              : Text(
                                  _dropDownValue,
                                ),
                          isExpanded: true,
                          iconSize: 15.0,
                          items: ['Black', 'Red', 'Green', 'Blue', 'Yellow'].map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(
                                  val,
                                  style: _theme.textTheme.headline5
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (val) {
                            setState(
                              () {
                                _dropDownValue = val;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                    SizedBox(width:ScreenUtil().setWidth(17)),
                    Container(
                      height: ScreenUtil().setHeight(40),
                       width: ScreenUtil().setWidth(40),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: AppColors.text1,
                        boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.25),
        spreadRadius: 2,
        blurRadius: 2,
        offset: Offset(0, 2), // changes position of shadow
      ),
    ],
                       ),
                       child: IconButton(icon: Icon(Icons.favorite_border,size:10,color: AppColors.text5,), onPressed: null),
                    )
                ],
              ),
            ),
            SizedBox(height:ScreenUtil().setHeight(23)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Text(
                          'Le Universelles',style: _theme.textTheme.headline1.copyWith(fontSize:24),
                        ),
                        Spacer(),
                          Text(
                          '\$19.99',style: _theme.textTheme.headline1.copyWith(fontSize:24,fontWeight: FontWeight.w700),
                        ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
            child: Text('Short black dress',style: _theme.textTheme.headline2.copyWith(fontSize: 11,color: AppColors.text5),),
            ),
            SizedBox(height: ScreenUtil().setHeight(7),),
            Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothStarRating(
          rating: 3,
          isReadOnly: false,
          size: 12,
          filledIconData: Icons.star,
        borderColor: AppColors.text6,
        color: AppColors.text6,
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
        Text('(10)',style: _theme.textTheme.headline2.copyWith(color: AppColors.text5),)
        ]
      ),
             ),
               SizedBox(height: ScreenUtil().setHeight(22),),
               Padding(
                padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
                 child: Text('Short dress in soft cotton jersey with decorative buttons down the front and a wide, fill trimmed square neckline with concealed elastication. Elasticated seemed under the burst and short puff sleves with a small fill trim.',style: _theme.textTheme.headline5,),
               ),
             
               SizedBox(height: ScreenUtil().setHeight(15),),
               Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
               
               ),
               Padding(
            padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
                 child: BlackButton(buttonText: 'ADD TO CART'),
               ),
                    SizedBox(height: ScreenUtil().setHeight(19),),
                    Padding(
                     padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
                      child: Divider(color: AppColors.text5,thickness: 0.25,),
                    ),
 SizedBox(height: ScreenUtil().setHeight(14),),
Padding(
  padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
  child:   GestureDetector(
    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Verification()));},
      child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Padding(padding: EdgeInsets.only(left:LaUniversellesConstants.horizontalPadding/2),
child: Text('Shipping info',style: _theme.textTheme.headline6,),
),
Spacer(),
Padding(padding: EdgeInsets.only(right:LaUniversellesConstants.horizontalPadding/2),
child: Icon(Icons.arrow_forward_ios,size: 16,)
)
    ],
    
    ),
  ),
),
  SizedBox(height: ScreenUtil().setHeight(14),),
   Padding(
                     padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
                      child: Divider(color: AppColors.text5,thickness: 0.25,),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(14),),
                    Padding(
  padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
  child:   GestureDetector(
    onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RatingandReview()));},
      child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Padding(padding: EdgeInsets.only(left:LaUniversellesConstants.horizontalPadding/2),
child: Text('Support',style: _theme.textTheme.headline6,),
),
Spacer(),
Padding(padding: EdgeInsets.only(right:LaUniversellesConstants.horizontalPadding/2),
child: Icon(Icons.arrow_forward_ios,size: 16,)
)
    ],
    
    ),
  ),
),
  SizedBox(height: ScreenUtil().setHeight(14),),
   Padding(
                     padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
                      child: Divider(color: AppColors.text5,thickness: 0.25,),
                    ),
  SizedBox(height: ScreenUtil().setHeight(20),),
  Padding(
 padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('You can also like this',style: _theme.textTheme.headline5.copyWith(fontSize: 18),),
        Spacer(),
        Text('12 items', style: _theme.textTheme.headline5.copyWith(fontSize: 12,color: AppColors.text5),)
      ],
    ),
  ),
   SizedBox(height: ScreenUtil().setHeight(16),),
   ProductSimilar(),
    SizedBox(height: ScreenUtil().setHeight(55),),
              ],
            ),
            )
          
    );
         
  }
}
