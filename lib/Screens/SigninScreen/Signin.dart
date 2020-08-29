import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/TextField.dart';
import 'package:le_universelles/Screens/ForgotPasswordScreen/ForgotPassword.dart';
import 'package:le_universelles/Screens/SignUpScreen/SignUp.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController eml = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(117)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                "Sign In",
                style: _theme.appBarTheme.textTheme.headline1,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: TextF(
                hint: "Email",
                label: "Email",
                con: eml,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(14)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: TextF(
                hint: "Password",
                label: "Password",
                obs: true,
                con: pass,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(25)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ForgotPassword()));},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your password ?",
                      style: _theme.textTheme.headline5
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 24,
                          color: AppColors.text2,
                        ),
                        onPressed: null)
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(25)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: BlackButton(buttonText: "SIGN IN"),
            ),
            SizedBox(height: ScreenUtil().setHeight(27)),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));},
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: LaUniversellesConstants.horizontalPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account ? ",
                      style: _theme.textTheme.headline6,
                    ),
                    Text(
                      "Create One!",
                      style: _theme.textTheme.headline6
                          .copyWith(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(92)),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: LaUniversellesConstants.horizontalPadding),
                child: Text(
                  "Or login with social account",
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
                  SizedBox(width: ScreenUtil().setWidth(16)),
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
            SizedBox(height: ScreenUtil().setHeight(74)),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Le Universelles",
                  style: _theme.appBarTheme.textTheme.headline1,
                )),
            SizedBox(height: ScreenUtil().setHeight(101)),
          ],
        ),
      ),
    );
  }
}
