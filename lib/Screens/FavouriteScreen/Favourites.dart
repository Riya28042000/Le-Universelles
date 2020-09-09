import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Screens/SignUpScreen/SignUp.dart';
import 'package:le_universelles/Screens/SigninScreen/Signin.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Favoutite extends StatefulWidget {
  @override
  _FavoutiteState createState() => _FavoutiteState();
}

class _FavoutiteState extends State<Favoutite> {
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("Favourites",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1),
       backgroundColor: _theme.appBarTheme.color
     ),
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
            SizedBox(height: ScreenUtil().setHeight(81),),
            Align(
              alignment: Alignment.center,
                          child: Container(
                height: ScreenUtil().setHeight(207),
                width: ScreenUtil().setWidth(207),
                child: Image.asset("assets/images/favorite_border.png",fit: BoxFit.fill,),
              ),
            ),
              SizedBox(height: ScreenUtil().setHeight(48),),
                Align(child: Text("Sign in to view Favourites",style: _theme.textTheme.headline4.copyWith(fontSize: 24),), alignment: Alignment.center,),
                        SizedBox(height: ScreenUtil().setHeight(9),),
                          Align(child: Text("Shop them anytime you like",style: _theme.textTheme.headline2.copyWith(fontSize: 19, color: AppColors.text5),), alignment: Alignment.center,),
                       SizedBox(height: ScreenUtil().setHeight(49),),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
                         child: BlackButton(buttonText: "SIGN IN",onButtonTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
                         },),
                       ),
                              SizedBox(height: ScreenUtil().setHeight(14),),
                              Align(alignment:Alignment.center,child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    Text("Don't have an account?",style: _theme.textTheme.headline5.copyWith(fontSize:19, color: AppColors.text5),),
                                   GestureDetector(onTap:(){

                                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                                   },
                                   child:  Text(" Create One!",style: _theme.textTheme.headline5.copyWith(fontSize:19,),),
                                  )
                                ],
                              )) ,
                                 SizedBox(height: ScreenUtil().setHeight(42),), 
         ],
       ),
     ),
    );
  }
}