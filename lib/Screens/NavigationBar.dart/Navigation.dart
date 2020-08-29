import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Screens/AccountScreen/Accounts.dart';
import 'package:le_universelles/Screens/BagScreen/Bag.dart';
import 'package:le_universelles/Screens/CategoryScreen/Category.dart';
import 'package:le_universelles/Screens/FavouriteScreen/Favourites.dart';
import 'package:le_universelles/Screens/HomeScreen/Home.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  
  int _currentIndex = 0;
 final List<Widget> _children = [
  Home(),
  Category(),
  Bag(),
  Favoutite(),
  Account()
 ];

  @override
  Widget build(BuildContext context) {
      final _theme = Theme.of(context);
    return Scaffold(
          body: _children[_currentIndex],
          bottomNavigationBar: SizedBox(height:ScreenUtil().setHeight(75), child:BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.text4,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            iconSize: 33,
            selectedItemColor: AppColors.text2,
            unselectedItemColor: AppColors.text5,
       onTap: (index) {
          setState(() {
            _currentIndex = index;
                     
          });
        }, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('Home',style: _theme.textTheme.headline2,),
         ),
         new BottomNavigationBarItem(
           icon: Icon(MdiIcons.viewComfy),
           title: Text('Categories',style: _theme.textTheme.headline2,),
         ),
         new BottomNavigationBarItem(
           icon: Icon(MdiIcons.bagPersonal),
           title: Text('Bag',style: _theme.textTheme.headline2,)
         ),
           new BottomNavigationBarItem(
           icon: Icon(MdiIcons.heartOutline),
           title: Text('Favourite',style: _theme.textTheme.headline2,)
         ),
           new BottomNavigationBarItem(
           icon: Icon(MdiIcons.accountOutline,),
           title: Text('Accounts',style: _theme.textTheme.headline2,)
         )
       ],
     ),
    )
    );
  }
}