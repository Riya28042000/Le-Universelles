import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Components/DetailsCard.dart';
import 'package:le_universelles/Components/MyOrderCard.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  bool deliver = true;
  bool process = false;
  bool cancel = false;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: LaUniversellesConstants.elevation,
         leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: _theme.appBarTheme.color),
      backgroundColor: _theme.appBarTheme.color,
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
                "My Orders",
                style: _theme.appBarTheme.textTheme.headline1,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        deliver = true;
                        cancel = false;
                        process = false;
                      });
                    },
                    child: Container(
                      height: ScreenUtil().setHeight(30),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                        color: deliver ? AppColors.text2 : AppColors.text1,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          'Delivered',
                          style: _theme.textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w600,
                              color:
                                  deliver ? AppColors.text1 : AppColors.text2),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        deliver = false;
                        cancel = false;
                        process = true;
                      });
                    },
                    child: Container(
                      height: ScreenUtil().setHeight(30),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                        color: process ? AppColors.text2 : AppColors.text1,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          'Processing',
                          style: _theme.textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w600,
                              color:
                                  process ? AppColors.text1 : AppColors.text2),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        deliver = false;
                        cancel = true;
                        process = false;
                      });
                    },
                    child: Container(
                      height: ScreenUtil().setHeight(30),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                        color: cancel ? AppColors.text2 : AppColors.text1,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          'Cancelled',
                          style: _theme.textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w600,
                              color:
                                  cancel ? AppColors.text1 : AppColors.text2),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
         MyOrderCard(),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ), 
          ],
        ),
      ),
    );
  }
}
