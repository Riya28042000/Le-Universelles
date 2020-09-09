import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BasketCard.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/PromoCodeCard.dart';
import 'package:le_universelles/Screens/CheckoutScreen/Checkout.dart';
import 'package:le_universelles/Screens/FilterScreen/Filters.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:le_universelles/Utils/SearchBox.dart';

class Basket extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("Basket",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1,),
       backgroundColor: _theme.appBarTheme.color,
       leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.of(context).pop();}),
     ),
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: ScreenUtil().setHeight(30),),
           Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
           
           child: SearchBox(),),
           SizedBox(height: ScreenUtil().setHeight(26),),
            
                  BasketCard(),
                   SizedBox(height: ScreenUtil().setHeight(30),),
                 Padding(
            padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                   child: Container(
                        width: ScreenUtil().setWidth(370),
                     child: Stack(
                       children: [
                          Container(
                        height: ScreenUtil().setHeight(39),
                        width: ScreenUtil().setWidth(340),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          border: Border.all(color: AppColors.text5,width: 0.25)
                        ),
                        child:TextFormField(
                         decoration: InputDecoration(
                           hintText:  '      Enter your promo code',
                           hintStyle: _theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w500, color: AppColors.text5),
                           enabledBorder: InputBorder.none,
                           focusedBorder: InputBorder.none
                         ),
                        ),
                       
                 
                        ),
                        Positioned(
                          right:0,
                          child: Container(
                            height: ScreenUtil().setHeight(39),
                            width: ScreenUtil().setWidth(39),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.text2
                            ),
                            child: Center(child:IconButton(icon: Icon(Icons.arrow_forward,color: AppColors.text1,), onPressed: (){

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
                                           MediaQuery.of(context).size.height*0.7,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(40)),
                                                 Padding(
            padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                   child: Container(
                        width: ScreenUtil().setWidth(370),
                     child: Stack(
                       children: [
                          Container(
                        height: ScreenUtil().setHeight(39),
                        width: ScreenUtil().setWidth(340),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                          border: Border.all(color: AppColors.text5,width: 0.25)
                        ),
                        child:TextFormField(
                         decoration: InputDecoration(
                           hintText:  '      Enter your promo code',
                           hintStyle: _theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w500, color: AppColors.text5),
                           enabledBorder: InputBorder.none,
                           focusedBorder: InputBorder.none
                         ),
                        ),
                       
                 
                        ),
                        Positioned(
                          right:0,
                          child: Container(
                            height: ScreenUtil().setHeight(39),
                            width: ScreenUtil().setWidth(39),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.text2
                            ),
                            child: Center(child:IconButton(icon: Icon(Icons.arrow_forward,color: AppColors.text1,), onPressed: (){

                             
                            })
                            ),
                          ),
                        )
                        
                       ],
                     ),
                   ),
                 ),
                 SizedBox(height: ScreenUtil().setHeight(33.52),),
                 Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                 child: Text("Your Promo Codes",style: _theme.textTheme.headline2.copyWith(fontSize: 18, fontStyle: FontStyle.italic),),
                 ),
                   SizedBox(height: ScreenUtil().setHeight(18.85),),
                   Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                   
                   child: PromoCodeCard(),
                   )
                                                 ],
                                               ),
                                        ));
                              });
                            })
                            ),
                          ),
                        )
                        
                       ],
                     ),
                   ),
                 ),
                 SizedBox(height:ScreenUtil().setHeight(30.27)),
                 Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                     Text('Total amount:',style: _theme.textTheme.headline5.copyWith(color: AppColors.text5,fontWeight: FontWeight.w500),),
              Spacer(),
              Text('\$124',style: _theme.textTheme.headline2.copyWith(fontSize:18,fontStyle: FontStyle.italic),)
                ],
                   ),
                 ),
                                  SizedBox(height:ScreenUtil().setHeight(30)),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
                                  child: BlackButton(buttonText: 'CHECKOUT',onButtonTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Checkout()));},),
                                  ),
                                  SizedBox(height:ScreenUtil().setHeight(40)),

         ],
       ),
     ),
    );
  }
}