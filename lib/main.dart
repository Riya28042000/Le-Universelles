import 'package:flutter/material.dart';
import'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Screens/NavigationBar.dart/Navigation.dart';
import 'package:le_universelles/Utils/Themes.dart';
import 'package:le_universelles/Screens/Splash/SplashScreen.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(MaterialApp(
         builder: (context, child) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
            child: child,
          );
        },
          home: HomePage(),
          theme: LaUniversellesTheme.theme,
          debugShowCheckedModeBanner: false,
        ));
          });
      }
       
 class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  ScreenUtil.init(context, height: 667, width: 375);
    return NavigationBar();
  }
}