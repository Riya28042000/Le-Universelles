import 'package:flutter/material.dart';
import 'package:le_universelles/Utils/AppColour.dart';

class TextF extends StatelessWidget {
  final String hint;
  final String label;
  final bool obs;
  final TextEditingController con;
  TextF({this.hint,this.label,this.obs=false,this.con});
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return TextFormField(
      style: _theme.textTheme.headline1.copyWith(fontWeight:FontWeight.w500),
      controller: con,
      cursorColor: AppColors.text5,
      textAlign: TextAlign.left,
    obscureText: obs,
      decoration: new InputDecoration(
    focusColor: AppColors.text5,
        hintText: this.hint,
        
        labelText: this.label,
        labelStyle: _theme.textTheme.headline5.copyWith(fontSize:11,color:AppColors.text5),
        hintStyle: _theme.textTheme.headline5.copyWith(fontSize:15,color:AppColors.text5),
        focusedBorder: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
          borderSide: new BorderSide(
            color: AppColors.text5,
            width: 1.0,
          ),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
          borderSide: new BorderSide(
            color: AppColors.text5,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}