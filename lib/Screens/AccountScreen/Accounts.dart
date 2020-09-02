import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/TextField.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController name= TextEditingController();
  TextEditingController dob= TextEditingController();
    TextEditingController pass= TextEditingController();
    bool sales= true;
    bool arrivals= false;
    bool status= false;
  @override
  Widget build(BuildContext context) {

    final _theme= Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Padding(
                padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding/2),
         child: Text("Settings",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1),
       ),
       backgroundColor: _theme.appBarTheme.color
     ),
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height:ScreenUtil().setHeight(15)),
           Padding(
             padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Personal Information",style: _theme.textTheme.headline6.copyWith(fontWeight: FontWeight.w600),),
           ),
               SizedBox(height:ScreenUtil().setHeight(21.1)),
               Padding(
        padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                 child: TextF(hint: 'Full Name',label: 'Fll Name', con: name),
               ),
                 SizedBox(height:ScreenUtil().setHeight(24.13)),
                 Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                 child: TextF(hint: 'Date of Birth',label: 'Date of Birth', con: name),
                 ),
                  SizedBox(height:ScreenUtil().setHeight(47.05)),
                  Padding(      padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                  child: Container(
                    width: ScreenUtil.screenWidth,
                                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Password", style: _theme.textTheme.headline6.copyWith(fontWeight:FontWeight.w600),),
                        Spacer(),
                        GestureDetector(onTap: null,child: Text("Change", style: _theme.textTheme.headline6.copyWith(fontWeight:FontWeight.w600,color: AppColors.text5),)), 
                      ],
                    ),
                  ),
                  ),
                   SizedBox(height:ScreenUtil().setHeight(23.03)),
         Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                 child: TextF(hint: 'Password',label: 'Password', con: pass,obs: true,),
                 ),
                      SizedBox(height:ScreenUtil().setHeight(55)),
                      Padding(
               padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                        child: Text("Notifications",style: _theme.textTheme.headline6.copyWith(fontWeight: FontWeight.w600),),
                      ),
                          SizedBox(height:ScreenUtil().setHeight(30)),
                      Padding(
                    padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                        child: Container(
                          width: ScreenUtil.screenWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sales",style: _theme.textTheme.headline6.copyWith(fontWeight: FontWeight.w600,fontSize:14),),
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
                       SizedBox(height:ScreenUtil().setHeight(5)),
                              Padding(
                    padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                        child: Container(
                          width: ScreenUtil.screenWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("New arrivals",style: _theme.textTheme.headline6.copyWith(fontWeight: FontWeight.w600,fontSize:14),),
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
                           SizedBox(height:ScreenUtil().setHeight(5)),
                             Padding(
                    padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
                        child: Container(
                          width: ScreenUtil.screenWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Delivery status changes",style: _theme.textTheme.headline6.copyWith(fontWeight: FontWeight.w600,fontSize:14),),
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
                      SizedBox(height:ScreenUtil().setHeight(30)),
         ],
       ),
     ),
    );
  }
}