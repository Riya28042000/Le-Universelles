import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/TextField.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController eml= TextEditingController();
  @override
  Widget build(BuildContext context) {
  final  _theme= Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
        appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,size: 42,), onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
      body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
                  SizedBox(
               height: ScreenUtil().setHeight(15),
             ),
             Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Forgot Password?",style: _theme.appBarTheme.textTheme.headline1,),
             ),
              SizedBox(
               height: ScreenUtil().setHeight(32),
             ),
                Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Please enter your email address. You will receive a link",style: _theme.textTheme.headline1.copyWith(fontWeight: FontWeight.w400,fontSize: 13),),
             ),
              Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("to create a new password via email",style: _theme.textTheme.headline1.copyWith(fontWeight: FontWeight.w400,fontSize: 13),),
             ),
             SizedBox(
               height: ScreenUtil().setHeight(16),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
               child: TextF(
                 hint: "Email",
                 label: "Email",
                 obs: false,
                 con: eml,
               ),
             ),
              SizedBox(
               height: ScreenUtil().setHeight(8),
             ),
               Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Not a valid email address. Should be your @email.com",style: _theme.textTheme.headline2.copyWith(fontSize: 11,color: AppColors.text7),),
             ),
               SizedBox(
               height: ScreenUtil().setHeight(22),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
               child: BlackButton(buttonText: "RESET"),
             ),
              SizedBox(
               height: ScreenUtil().setHeight(50),
             ),
           ],
         ),
      ),
    );
  }
}