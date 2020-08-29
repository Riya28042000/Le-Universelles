import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';

class BlackButton extends StatelessWidget {
  final String buttonText;
  final Color bgColor;
  final TextStyle textStyle;
  final double horizontalPadding;
  final double verticalPadding;
  final double height;
  final VoidCallback onButtonTap;

  BlackButton(
      {this.bgColor = AppColors.text2,
      this.verticalPadding,
      this.height,
      @required this.buttonText,
      this.horizontalPadding,
      this.onButtonTap,
      this.textStyle})
      : super();

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      
color: this.bgColor,
      height: height ?? ScreenUtil().setHeight(59),
     width: ScreenUtil().setWidth(348),
   
      child: FlatButton(
        onPressed: this.onButtonTap,
        color: this.bgColor,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        textColor: AppColors.text1,
        highlightColor: Colors.transparent,
        child: Center(
          child: Text(this.buttonText,
              textAlign: TextAlign.center,
              style: this.textStyle ??
                  _theme.textTheme.headline1.copyWith(color:AppColors.text1),
        ),
      ),
    )
    );
  }
}