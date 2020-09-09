import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Components/HomeCard.dart';
import 'package:le_universelles/Components/HomeList.dart';
import 'package:le_universelles/Components/ProductSimilar.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:le_universelles/Utils/SearchBox.dart';
import 'package:le_universelles/Utils/la_universelles_icons_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
        final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("La Universelles",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1,),
       actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
              child: IconButton(
                icon: Icon(Icons.notifications,
                    size: _theme.appBarTheme.iconTheme.size,
                    color: _theme.appBarTheme.iconTheme.color),
                onPressed: () {}
              ),
            ),
          ],
          backgroundColor: _theme.appBarTheme.color
     ),
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            SizedBox(height: ScreenUtil().setHeight(27),),
           Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
           
           child: SearchBox(),),
            SizedBox(height: ScreenUtil().setHeight(26),),
            Container(
              height: ScreenUtil().setHeight(55),
              width: ScreenUtil.screenWidth,
              decoration: BoxDecoration(
                   color: AppColors.text2,                
              ),
              child: Center(
                child: Padding(padding: EdgeInsets.only(left:LaUniversellesConstants.horizontalPadding,right: LaUniversellesConstants.horizontalPadding/2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                         height: ScreenUtil().setHeight(32),
              width: ScreenUtil().setWidth(270),   
                      child: Text('FLAT 10% OFF | When you shop for \$500 or more: usecode: WELCOME50',style: _theme.textTheme.headline5.copyWith(fontSize: 13, color: AppColors.text1),)),
Spacer(),
           IconButton(icon: Icon(Icons.arrow_forward_ios, color:AppColors.text1,size: 15,), onPressed: null)
                  ]
                )
                     ),
              ),
            ),
             SizedBox(height: ScreenUtil().setHeight(21),),
             Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
             child: HomeCard(),
             ),
                     SizedBox(height: ScreenUtil().setHeight(11),),
                     Padding(
                       padding:EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Icon(LaUniversellesIcons.van, size: 30,),
                           SizedBox(width:ScreenUtil().setWidth(10)),
                           Text('Free Shipping on orders above \$99', style: _theme.textTheme.headline5.copyWith(fontWeight:FontWeight.w600),)
                         ],
                       ),
                     ),
                 SizedBox(height: ScreenUtil().setHeight(24),),
                 Padding(padding:  EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                 child: Container(
                   height: ScreenUtil().setHeight(142),
                   width: ScreenUtil().setWidth(378),
                   child: Image.asset('assets/images/offer.png',fit: BoxFit.fill,),
                 ),
                 ),
                  SizedBox(height: ScreenUtil().setHeight(27),),
                  Padding(padding:EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                  child: Text('Shop by Category',style: _theme.textTheme.headline2.copyWith(fontSize: 19, fontWeight: FontWeight.w700),),
                  ),
                     SizedBox(height: ScreenUtil().setHeight(28),),
                     HomeList(),
                      SizedBox(height: ScreenUtil().setHeight(18),),
                      Padding(padding:EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New',style: _theme.textTheme.headline2.copyWith(fontSize: 19, fontWeight: FontWeight.w700)),
                          Spacer(),
                          GestureDetector(
                            onTap: null,
                            child: Text('View All',style: _theme.textTheme.headline2.copyWith(fontSize:11),))
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                      child: Text('You\'ve never seen it before',style: _theme.textTheme.headline2.copyWith(fontSize:11,color: AppColors.text5),) ,),
                        SizedBox(height: ScreenUtil().setHeight(29),),
                        Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
                        child: ProductSimilar(),
                        ),
                         SizedBox(height: ScreenUtil().setHeight(35),),
                          Padding(padding:EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                  child: Text('Must Haves',style: _theme.textTheme.headline2.copyWith(fontSize: 19, fontWeight: FontWeight.w700),),
                  ),
                   Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                      child: Text('You\'ve never seen it before',style: _theme.textTheme.headline2.copyWith(fontSize:11,color: AppColors.text5),) ,),
                       SizedBox(height: ScreenUtil().setHeight(16),),  
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                         child: Container(
                           height: ScreenUtil().setHeight(193),
                           width: ScreenUtil().setWidth(378),
                           decoration: BoxDecoration(
                             color: AppColors.text5
                           ),
                         ),
                       ) 
         ],
       ),
     ),
    );
  }
}