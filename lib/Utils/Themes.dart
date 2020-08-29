import 'package:flutter/material.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class LaUniversellesTheme{
  static ThemeData get theme {
     
      const Color primaryText = AppColors.text2;
      final originalTextTheme = ThemeData.light().textTheme;
      return ThemeData.light().copyWith(
       appBarTheme:  AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: AppColors.text2,size: 24),
          elevation: LaUniversellesConstants.elevation,
           textTheme: originalTextTheme.copyWith(
                headline1: originalTextTheme.headline1.copyWith(
                    fontFamily: 'Lato',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.text2)),
       ),
       textTheme: originalTextTheme.copyWith(
          
          
            headline1: originalTextTheme.headline1.copyWith(
                fontFamily: 'Lato',
               fontSize:14,
                fontWeight: FontWeight.w600,
                color: primaryText),
             headline2: originalTextTheme.headline1.copyWith(
                fontFamily: 'Lato',
                 fontSize: 10,
               fontWeight: FontWeight.w400,
                color: primaryText),

      headline3: originalTextTheme.headline1.copyWith(
                fontFamily: 'Lato',
               fontSize: 12,
               fontWeight: FontWeight.w700,
                color: primaryText),
                headline4: originalTextTheme.headline1.copyWith(
                fontFamily: 'Lato',
               fontSize: 20,
               fontWeight: FontWeight.w700,
                color: primaryText),
                 headline5: originalTextTheme.headline1.copyWith(
                fontFamily: 'Lato',
                 fontSize: 14,
               fontWeight: FontWeight.w400,
                color: primaryText),
                   headline6: originalTextTheme.headline1.copyWith(
                fontFamily: 'Lato',
                 fontSize: 16,
               fontWeight: FontWeight.w400,
                color: primaryText),
        )
      );
  }
}