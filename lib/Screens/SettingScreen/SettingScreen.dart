import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/TextField.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TextEditingController name = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController oldpass = TextEditingController();
  TextEditingController newpass = TextEditingController();
  TextEditingController repeat = TextEditingController();
  bool sales = true;
  bool arrivals = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
      appBar: AppBar(
          centerTitle: false,
          elevation: LaUniversellesConstants.elevation,
          title: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: LaUniversellesConstants.horizontalPadding / 2),
            child: Text("Settings",
                textAlign: TextAlign.left,
                style: _theme.appBarTheme.textTheme.headline1),
          ),
          backgroundColor: _theme.appBarTheme.color),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(15)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                "Personal Information",
                style: _theme.textTheme.headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(21.1)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: TextF(hint: 'Full Name', label: 'Fll Name', con: name),
            ),
            SizedBox(height: ScreenUtil().setHeight(24.13)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: TextF(
                  hint: 'Date of Birth', label: 'Date of Birth', con: name),
            ),
            SizedBox(height: ScreenUtil().setHeight(47.05)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Container(
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: _theme.textTheme.headline6
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: Color(0xffF9F9F9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0)),
                              ),
                              builder: (context) {
                                return StatefulBuilder(
                                    builder: (BuildContext context, setState) =>
                                        Container(
                                          height:
                                              ScreenUtil().setHeight(523.73),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                  height: ScreenUtil()
                                                      .setHeight(39.5)),
                                              Text(
                                                "Password Change",
                                                style: _theme
                                                    .textTheme.headline4
                                                    .copyWith(fontSize: 16),
                                              ),
                                              SizedBox(
                                                  height: ScreenUtil()
                                                      .setHeight(19.7)),
                                              Padding(
                                                padding: const EdgeInsets
                                                        .symmetric(
                                                    horizontal:
                                                        LaUniversellesConstants
                                                                .horizontalPadding /
                                                            2),
                                                child: TextF(
                                                  hint: 'Old Password',
                                                  label: 'Old Password',
                                                  obs: true,
                                                  con: oldpass,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: ScreenUtil()
                                                      .setHeight(15.53)),
                                              Padding(
                                                padding: const EdgeInsets
                                                        .symmetric(
                                                    horizontal:
                                                        LaUniversellesConstants
                                                                .horizontalPadding /
                                                            2),
                                                child: GestureDetector(
                                                    onTap: null,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Text(
                                                        'Forgot Password?',
                                                        style: _theme
                                                            .textTheme.headline4
                                                            .copyWith(
                                                                fontSize: 16,
                                                                color: AppColors
                                                                    .text5),
                                                      ),
                                                    )),
                                              ),
                                              SizedBox(
                                                  height: ScreenUtil()
                                                      .setHeight(19.97)),
                                              Padding(
                                                padding: const EdgeInsets
                                                        .symmetric(
                                                    horizontal:
                                                        LaUniversellesConstants
                                                                .horizontalPadding /
                                                            2),
                                                child: TextF(
                                                  hint: 'New Password',
                                                  label: 'New Password',
                                                  obs: true,
                                                  con: newpass,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: ScreenUtil()
                                                      .setHeight(26.63)),
                                              Padding(
                                                padding: const EdgeInsets
                                                        .symmetric(
                                                    horizontal:
                                                        LaUniversellesConstants
                                                                .horizontalPadding /
                                                            2),
                                                child: TextF(
                                                  hint: 'Repeat New Password',
                                                  label: 'Repeat New Password',
                                                  obs: true,
                                                  con: repeat,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                              });
                        },
                        child: Text(
                          "Change",
                          style: _theme.textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.text5),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(23.03)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: TextF(
                hint: 'Password',
                label: 'Password',
                con: pass,
                obs: true,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(55)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                "Notifications",
                style: _theme.textTheme.headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Container(
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sales",
                      style: _theme.textTheme.headline6
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Spacer(),
                    Switch(
                      activeColor: AppColors.text11,
                      inactiveTrackColor: AppColors.text5,
                      value: sales,
                      onChanged: (bool newValue) {
                        setState(() {
                          sales = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Container(
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New arrivals",
                      style: _theme.textTheme.headline6
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Spacer(),
                    Switch(
                      activeColor: AppColors.text11,
                      inactiveTrackColor: AppColors.text5,
                      value: arrivals,
                      onChanged: (bool newValue) {
                        setState(() {
                          arrivals = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Container(
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery status changes",
                      style: _theme.textTheme.headline6
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Spacer(),
                    Switch(
                      activeColor: AppColors.text11,
                      inactiveTrackColor: AppColors.text5,
                      value: status,
                      onChanged: (bool newValue) {
                        setState(() {
                          status = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(30)),
          ],
        ),
      ),
    );
  }
}
