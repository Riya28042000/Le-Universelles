import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/Box.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
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
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                "Have you received a",
                style: _theme.appBarTheme.textTheme.headline1,
              ),
            ),
             SizedBox(
              height: ScreenUtil().setHeight(3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                "Verification Code?",
                style: _theme.appBarTheme.textTheme.headline1,
              ),
            ),
              SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                "Enter 4 digit code",
                style: _theme.textTheme.headline5,
              ),
            ),
              SizedBox(
              height: ScreenUtil().setHeight(26),
            ),
            Padding(padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Box(),
                      Box(),
                      Box(),
                      Box(),
                    ],
                  ),
                  ),
                    SizedBox(
              height: ScreenUtil().setHeight(27),
            ),
            Padding(
              padding:  const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: BlackButton(buttonText: 'RESET'),
            ),
                SizedBox(
              height: ScreenUtil().setHeight(19),
            ),
            Align(alignment: Alignment.center,
            child: GestureDetector(
              onTap: null,
              child: Text('Resend Code', style: _theme.textTheme.headline4.copyWith(fontSize: 21, fontWeight: FontWeight.w600),),
            ),
            )
          ],
        ),
      ),
    );
  }
}
