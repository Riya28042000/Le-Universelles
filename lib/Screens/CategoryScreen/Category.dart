import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/CategoryList.dart';
import 'package:le_universelles/Components/SaleList.dart';
import 'package:le_universelles/Screens/CategoryItem.dart/CategoryItem.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:le_universelles/Utils/SearchBox.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool male = false;
  bool female = true;
  bool kid = false;
  bool home = false;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
      appBar: AppBar(
          centerTitle: false,
          elevation: LaUniversellesConstants.elevation,
          title: Text(
            "Shop",
            textAlign: TextAlign.left,
            style: _theme.appBarTheme.textTheme.headline1,
          ),
          backgroundColor: _theme.appBarTheme.color),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: LaUniversellesConstants.horizontalPadding / 2,
                    vertical: LaUniversellesConstants.verticalPadding * 2.7),
                child: SearchBox(
                  text: _controller,
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: LaUniversellesConstants.horizontalPadding / 2,
                      right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        male = true;
                        female = false;
                        kid = false;
                        home = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.text2),
                          color: male ? AppColors.text2 : AppColors.text1),
                      width: ScreenUtil().setWidth(74),
                      height: ScreenUtil().setHeight(36),
                      child: Center(
                          child: Text("MEN",
                              style: _theme.textTheme.headline3.copyWith(
                                  color: male
                                      ? AppColors.text1
                                      : AppColors.text2))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        male = false;
                        female = true;
                        kid = false;
                        home = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: female ? AppColors.text2 : AppColors.text1,
                          border: Border.all(color: AppColors.text2)),
                      width: ScreenUtil().setWidth(90),
                      height: ScreenUtil().setHeight(36),
                      child: Center(
                          child: Text("WOMEN",
                              style: _theme.textTheme.headline3.copyWith(
                                  color: female
                                      ? AppColors.text1
                                      : AppColors.text2))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        kid = true;
                        male = false;
                        female = false;
                        home = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.text2),
                          color: kid ? AppColors.text2 : AppColors.text1),
                      width: ScreenUtil().setWidth(61),
                      height: ScreenUtil().setHeight(36),
                      child: Center(
                          child: Text("KIDS",
                              style: _theme.textTheme.headline3.copyWith(
                                  color: kid
                                      ? AppColors.text1
                                      : AppColors.text2))),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      home = true;
                      male = false;
                      female = false;
                      kid = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.text2),
                        color: home ? AppColors.text2 : AppColors.text1),
                    width: ScreenUtil().setWidth(68),
                    height: ScreenUtil().setHeight(36),
                    child: Center(
                        child: Text("HOME",
                            style: _theme.textTheme.headline3.copyWith(
                                color:
                                    home ? AppColors.text1 : AppColors.text2))),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(19)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Text(
                "CATEGORIES",
                style: _theme.textTheme.headline4,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(21)),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CategoryItem()));},
              child: CategoryList()),
            SizedBox(height:ScreenUtil().setHeight(11)),
             Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Text(
                "Sale",
                style: _theme.textTheme.headline4,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Text(
                "Super Summer Sale",
                style: _theme.textTheme.headline2.copyWith(fontSize: 11,color: AppColors.text5),
              ),
            ),
             SizedBox(height:ScreenUtil().setHeight(17)),
            SaleList()
          ],
        ),
      ),
    );
  }
}
