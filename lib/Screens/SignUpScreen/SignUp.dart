import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/TextField.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   TextEditingController eml= TextEditingController();
   TextEditingController name= TextEditingController();
   TextEditingController pass= TextEditingController();
   TextEditingController conf= TextEditingController();
   TextEditingController phone= TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,size: 42,), onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
      backgroundColor: AppColors.text1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
               height: ScreenUtil().setHeight(15),
             ),
             Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("SignUp",style: _theme.appBarTheme.textTheme.headline1,),
             ),
              SizedBox(
               height: ScreenUtil().setHeight(36),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
               child: TextF(
                 hint: "Name",
                 label: "Name",
                 obs: false,
                 con: name,
               ),
             ),
              SizedBox(
               height: ScreenUtil().setHeight(11),
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
               height: ScreenUtil().setHeight(11),
             ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                child: TextF(
                 hint: "Password",
                 label: "Password",
                 obs: true,
                 con: pass,
             ),
              ),
              SizedBox(
               height: ScreenUtil().setHeight(11),
             ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                child: TextF(
                 hint: "Password",
                 label: "Password",
                 obs: true,
                 con: conf,
             ),
              ),
              SizedBox(
               height: ScreenUtil().setHeight(11),
             ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                child: TextF(
                 hint: "Mobile Number",
                 label: "Mobile Number",
                 obs: false,
                 con: phone,
             ),
              ),
              SizedBox(
               height: ScreenUtil().setHeight(32),
             ),
              Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: _theme.textTheme.headline5
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 24,
                          color: AppColors.text2,
                        ),
                        onPressed: null),
                  ],
                ),
              ),
            ),
             SizedBox(
               height: ScreenUtil().setHeight(38),
             ),
             Padding(
               padding: EdgeInsets.symmetric(
              horizontal: LaUniversellesConstants.horizontalPadding),
               child: BlackButton(buttonText: "SIGN UP"),
             ),
              SizedBox(
               height: ScreenUtil().setHeight(26),
             ),
              Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: LaUniversellesConstants.horizontalPadding),
                child: Text(
                  "Or Sign up with social account",
                  style: _theme.textTheme.headline5
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(12)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      width: ScreenUtil().setWidth(92),
                      height: ScreenUtil().setHeight(64),
                      child: Image.asset('assets/images/Google.png'),
                    ),
                  ),
             Spacer(),
                  GestureDetector(
                    child: Container(
                      width: ScreenUtil().setWidth(92),
                      height: ScreenUtil().setHeight(64),
                      child: Image.asset('assets/images/Facebook.png'),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(
               height: ScreenUtil().setHeight(86),
             ),
          ],
        ),
      ),
    );
  }
}