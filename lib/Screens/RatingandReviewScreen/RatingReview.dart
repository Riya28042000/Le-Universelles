import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/RatingWithPic.dart';
import 'package:le_universelles/Components/RatingWithoutPhoto.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingandReview extends StatefulWidget {
  @override
  _RatingandReviewState createState() => _RatingandReviewState();
}

class _RatingandReviewState extends State<RatingandReview> {
bool isCheck= false;

  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BlackButton(buttonText: 'WRITE A REVIEW', onButtonTap: (){
         showModalBottomSheet(
          isScrollControlled: true,
                              context: context,
                              backgroundColor: Color(0xffF9F9F9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0)),
                              ),
                              builder: (context) {
                             return StatefulBuilder(
                                    builder: (BuildContext context, setState) =>
                                        Container(
                                          height:
                                           MediaQuery.of(context).size.height*0.85,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(40)),
                                                   Text(
                                                     "What is you rate?",
                                                     style: _theme
                                                         .textTheme.headline4
                                                         .copyWith(fontSize: 16,fontStyle: FontStyle.italic),
                                                   ),
                                                   SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(19.97)),
                                                           Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
                                                           child:  SmoothStarRating(
          rating: 3,
          isReadOnly: false,
          size: 20,
          filledIconData: Icons.star,
        borderColor: AppColors.text6,
        color: AppColors.text6,
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
                                                           ),
                                                             SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(36.41)),
                                                  Text('Please share your opinion',style: _theme.textTheme.headline2.copyWith(fontSize:18, fontStyle: FontStyle.italic),) ,
                                                  Text('about the product',style: _theme.textTheme.headline2.copyWith(fontSize:18, fontStyle: FontStyle.italic))   ,
                                                  Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                                                  child: Container(
                                                    height: ScreenUtil().setHeight(150.57),
                                                    width: ScreenUtil().setWidth(377.76),
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 12.11, vertical: 11.6),
                                                      child: TextFormField(
                                                        style: _theme.textTheme.headline5,
                                                        decoration: InputDecoration(
                                                          enabledBorder: InputBorder.none,
                                                          focusedBorder: InputBorder.none,
                                                          hintText: 'Your Review',
                                                          hintStyle: _theme.textTheme.headline5.copyWith(color: AppColors.text5)
                                                      
                                                          
                                                        ),
                                                      ),
                                                    ) ,
                                                  ),
                                                  )  ,
                                                  SizedBox(height: ScreenUtil().setHeight(10),),  
                                                  Container(
                                                    height: ScreenUtil().setHeight(134.62),
                                                    width: ScreenUtil().setWidth(148.56),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      border: Border.all(color: AppColors.text5, width: 0.25)
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          height: ScreenUtil().setHeight(52),
                                                          width: ScreenUtil().setWidth(52),
                                                          decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: AppColors.text5,
                                                          ),
                                                          child: Icon(Icons.camera,color:AppColors.text1),
                                                        ),
                                                        SizedBox(height: ScreenUtil().setHeight(21),),
                                                        Text("Add your photo",style: _theme.textTheme.headline2.copyWith(fontSize:11,fontStyle: FontStyle.italic),)
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height:ScreenUtil().setHeight(30)),
                                                  BlackButton(buttonText: 'SEND REVIEW')
                                                  
                                                 ],
                                               ),
                                        ));
                              });
      },),
       appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Rating & Review',
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
            SizedBox(height: ScreenUtil().setHeight(38),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('4.3',style: _theme.textTheme.headline1.copyWith(fontSize:44,fontStyle: FontStyle.italic),),
                     Text('23 ratings',style: _theme.textTheme.headline5.copyWith(color: AppColors.text5),),
                  ],
                  ),
                Spacer(),
                  Container(
                    height: ScreenUtil().setHeight(105.28),
                    width: ScreenUtil().setWidth(239),
                    child: Image.asset('assets/images/Rating.png'),
                  )
                ],
              ),
            ),
               SizedBox(height: ScreenUtil().setHeight(24),),
               Padding(padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
               child: Row(crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text('8 reviews',style: _theme.textTheme.headline1.copyWith(fontSize: 24,fontStyle: FontStyle.italic),),
                 Spacer(),
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
                                  "With photo",
                                  style: _theme.textTheme.headline5,
                                )
                 ],)
               ],
               ),
               ),
                 SizedBox(height: ScreenUtil().setHeight(28),),
               isCheck?RatingWithPic():  RatingWithoutPic(),
    SizedBox(height: ScreenUtil().setHeight(80),),
          ],
        ),
      ),
    );
  }
}