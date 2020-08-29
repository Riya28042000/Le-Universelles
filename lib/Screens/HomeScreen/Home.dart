import 'package:flutter/material.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
        final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("La Universelles",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1,),
       actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications,
                  size: _theme.appBarTheme.iconTheme.size,
                  color: _theme.appBarTheme.iconTheme.color),
              onPressed: () {}
            ),
          ],
          backgroundColor: _theme.appBarTheme.color
     ),
    );
  }
}