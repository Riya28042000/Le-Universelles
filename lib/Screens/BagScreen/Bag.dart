import 'package:flutter/material.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Bag extends StatefulWidget {
  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("Basket",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1.copyWith(fontSize:25),),
        leading: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){},),
          backgroundColor: _theme.appBarTheme.color
     ),
    );
  }
}