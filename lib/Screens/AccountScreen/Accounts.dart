import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Screens/AddressDetail/AddressDetail.dart';
import 'package:le_universelles/Screens/BagScreen/Basket.dart';
import 'package:le_universelles/Screens/FavouriteScreen/Favourite2.dart';
import 'package:le_universelles/Screens/MyOrderScreen/MyOrder.dart';
import 'package:le_universelles/Screens/PaymentMethod/Payment.dart';
import 'package:le_universelles/Screens/SettingScreen/SettingScreen.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final List<ProfileListItem> _list = [

    ProfileListItem(
        description: 'Already have 12 orders',
        heading: "My orders",
        onButtonTap: MyOrder(),
        ),
       ProfileListItem(
        description: '3 addresses',
        heading: "Shipping addresses",
        onButtonTap: AddressDetail(),),
         ProfileListItem(
        description: 'Visa **34',
        heading: "Payment methods",
        onButtonTap: PaymentScreen(),),
         ProfileListItem(
        description: 'You have special promocodes',
        heading: "Promocodes",
        onButtonTap: Basket(),),
         ProfileListItem(
        description: 'Reviews for 4 items',
        heading: "My reviews",
        onButtonTap:Favourite2(),),
         ProfileListItem(
        description: 'Notifications, password',
        heading: "Settings",
        onButtonTap: Setting(),),
  ];
    @override
  Widget build(BuildContext context) {
   final _theme= Theme.of(context);
    return Scaffold(

backgroundColor: AppColors.text1,
body: SingleChildScrollView(
  child:   Column(
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    mainAxisAlignment: MainAxisAlignment.start,
  
  children: [
  
  SizedBox(height:ScreenUtil().setHeight(75),),
  
  Padding(
  
    padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
  
    child:   Text("My Profiles",style: _theme.appBarTheme.textTheme.headline1,),
  
  ),
  
  SizedBox(height:ScreenUtil().setHeight(36),),
  
  Padding(
  
    padding:  const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
  
    child:  Row(
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      mainAxisAlignment: MainAxisAlignment.start,
  
      children: [
  
         Container(
  
     height: ScreenUtil().setHeight(64),
  
     width: ScreenUtil().setWidth(64),
  
       decoration: BoxDecoration(shape: BoxShape.circle,color: AppColors.text5),
  
    ),
  
    SizedBox(width:ScreenUtil().setWidth(19)),
  
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
  
      children: [
  
        Text("Sharun Ravindra",style: _theme.textTheme.headline1.copyWith(fontSize:18, fontWeight: FontWeight.w500),),
  
           Text("sharun@bridcodes.net",style: _theme.textTheme.headline5.copyWith(color: AppColors.text5),),
  
      ],
  
    )
  
      ],
  
    )
  
  ),
  
  SizedBox(height:ScreenUtil().setHeight(28)),
  
  Container(
  
                  width: ScreenUtil.screenWidth,
  
                  child: ListView.separated(
  
                    separatorBuilder: (BuildContext context, int index) => Padding(
  
                      padding: const EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
  
                      child: Divider(thickness: 0.25, color: AppColors.text5,),
  
                    ),
  
                      itemCount: _list.length,
  
                      shrinkWrap: true,
  
                      physics: NeverScrollableScrollPhysics(),
  
                      itemBuilder: (context, index) {
  
                        return _list[index] != null
  
                            ? InkWell(
  
                                splashColor: Colors.transparent,
  
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => _list[index].onButtonTap));
                                },
  
                                child: Container(
  
                                  height: ScreenUtil().setHeight(60.0),
  
                                  margin: EdgeInsets.symmetric(
  
                                      horizontal: 14,
  
                                      vertical:
  
                                          0.5 * LaUniversellesConstants.verticalPadding),
  
                                  color: Colors.transparent,
  
                                  child: ListTile(
  
                                    trailing: Icon(
  
                                      Icons.keyboard_arrow_right,
  
                                      color: AppColors.text5
  
                                    ),
  
                                    title: Text(
  
                                      _list[index].heading,
  
                                      style:  _theme.textTheme.headline1.copyWith(fontSize:18, fontWeight: FontWeight.w500),
  
                                    ),
  
                                    subtitle: Text(
  
                                      _list[index].description,
  
                                      style: _theme.textTheme.headline5.copyWith(color: AppColors.text5),
  
                                    ),
  
                                  ),
  
                                ),
  
                              )
  
                            : Container();
  
                      }),
  
                ),
  
                SizedBox(height:ScreenUtil().setHeight(20))
  
  ],
  
  ),
),
    );
  }
}
class ProfileListItem {
  final String heading;
  final String description;
   final Widget onButtonTap;

    ProfileListItem({this.description, this.heading, this.onButtonTap});
}
