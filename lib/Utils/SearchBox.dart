import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController text;
  SearchBox({this.text});
  @override
  Widget build(BuildContext context) {
     final _theme = Theme.of(context);
    return Container(
      height: ScreenUtil().setHeight(47),
      child: TextFormField(
        textAlign: TextAlign.left,
        controller: text,
        cursorColor: AppColors.text2,
        decoration: new InputDecoration(
           hintStyle: _theme.textTheme.headline1.copyWith(color: AppColors.text5),
          hintText: 'What are you looking for?',
          prefixIcon: Icon(Icons.search,size:19,color: AppColors.text2,),
          suffixIcon: IconButton(icon: Icon(Icons.mic,size: 24,color: AppColors.text2,), onPressed: (){}),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
                const Radius.circular(0.0),
            ),
            borderSide: new BorderSide(
                color: AppColors.text5,
                width: 1.0,
            ),
          ),
          focusedBorder: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
                const Radius.circular(0.0),
            ),
            borderSide: new BorderSide(
                color: AppColors.text5,
                width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}