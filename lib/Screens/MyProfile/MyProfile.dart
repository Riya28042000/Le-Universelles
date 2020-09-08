import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final List<ProfileListItem> _list = [

    ProfileListItem(
        description: 'Already have 12 orders',
        heading: "My orders",
        route: null),
       ProfileListItem(
        description: '3 addresses',
        heading: "Shipping addresses",
        route: null,),
         ProfileListItem(
        description: 'Visa **34',
        heading: "Payment methods",
        route: null,),
         ProfileListItem(
        description: 'You have special promocodes',
        heading: "Promocodes",
        route: null,),
         ProfileListItem(
        description: 'Reviews for 4 items',
        heading: "My reviews",
        route: null,),
         ProfileListItem(
        description: 'Notifications, password',
        heading: "Settings",
        route: null,),
  ];
    @override
  Widget build(BuildContext context) {
   final _theme= Theme.of(context);
    return Scaffold(
appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
           
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: _theme.appBarTheme.color
),
backgroundColor: AppColors.text1,
body: SingleChildScrollView(
  child:   Column(
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    mainAxisAlignment: MainAxisAlignment.start,
  
  children: [
  
  SizedBox(height:ScreenUtil().setHeight(15),),
  
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
  
                                onTap: () => null,
  
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
   final String route;

    ProfileListItem({this.description, this.heading, this.route});
}
