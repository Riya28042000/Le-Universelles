import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/TextField.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController name= TextEditingController();
  TextEditingController add= TextEditingController();
    TextEditingController city= TextEditingController();
      TextEditingController state= TextEditingController();
        TextEditingController zip= TextEditingController();
          TextEditingController country= TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("Add Address",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1.copyWith(fontSize:25),),
        leading: Padding(
          padding: const EdgeInsets.only(left:LaUniversellesConstants.horizontalPadding/2),
          child: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){
            Navigator.of(context).pop();
          },),
        ),
          backgroundColor: _theme.appBarTheme.color
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height:ScreenUtil().setHeight(47)),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
           child: TextF(hint: 'Full Name',label: 'Full Name',con: name,),
         ),
              SizedBox(height:ScreenUtil().setHeight(22.07)),
           Padding(
                padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: TextF(hint: 'Address',label: 'Address',con: add,),
           ),      
        SizedBox(height:ScreenUtil().setHeight(22.07)),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: TextF(hint: 'City',label: 'City',con: city,),
           ),
            SizedBox(height:ScreenUtil().setHeight(22.07)),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: TextF(hint: 'State/Province/Region',label: 'State/Province/Region',con: state,),
           ), 
            SizedBox(height:ScreenUtil().setHeight(22.07)),
           Padding(
                 padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: TextF(hint: 'Zip Code (Postal Code)',label: 'Zip Code (Postal Code)',con: zip,),
           ),  
       SizedBox(height:ScreenUtil().setHeight(22.07)),
           Padding(
                  padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: TextF(hint: 'Country',label: 'Country',con: country,),
           ), 
       ],
     ),
     floatingActionButton: FloatingActionButton(onPressed: null, child:Icon(Icons.add, color: AppColors.text1,size: 24),backgroundColor: AppColors.text2,elevation: 0.0,),
    );
  }
}