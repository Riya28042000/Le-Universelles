import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Components/Fav3Card.dart';
import 'package:le_universelles/Screens/FilterScreen/Filters.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';
import 'package:le_universelles/Utils/SearchBox.dart';

class Favourite3 extends StatefulWidget {
  @override
  _Favourite3State createState() => _Favourite3State();
}

class _Favourite3State extends State<Favourite3> {
    bool one=false;
     bool two= false;
     bool three= false;
     bool four= false;
     bool five= false;
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.text1,
     appBar: AppBar(
       centerTitle: false,
       elevation: LaUniversellesConstants.elevation,
       title: Text("Favourites",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1),
       backgroundColor: _theme.appBarTheme.color
     ),
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
             SizedBox(height: ScreenUtil().setHeight(27),),
           Padding(padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
           
           child: SearchBox(),),
            SizedBox(height: ScreenUtil().setHeight(26),),
              Padding(padding:EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2) ,
                  child: Row(
                 //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                            IconButton(icon: Icon(Icons.filter_list), onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Filters()));
                            }),
                         //   SizedBox(width:ScreenUtil().setWidth(2)),
                            Text("Filters",style: _theme.textTheme.headline3,),
                            Spacer(),
                             IconButton(icon: Icon(Icons.import_export ), onPressed: (){
            showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return StatefulBuilder(
                   builder: (BuildContext context, setState) => Container(
                     
                 
                     child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[     
                SizedBox(height:ScreenUtil().setHeight(15)),
                Align(child: Text("Sort By",
                
                style: _theme.textTheme.headline5.copyWith(fontStyle: FontStyle.italic,fontSize: 16),),alignment: Alignment.center),
                SizedBox(height: ScreenUtil().setHeight(20)),
                Container(
                      color: one? AppColors.text2:AppColors.text1,
                  child: ListTile(
                      
                      title: Text('Popular',style: _theme.textTheme.headline5.copyWith(fontStyle:one?FontStyle.italic:FontStyle.normal,color: one?AppColors.text1:AppColors.text2),),
                      onTap: () {
                      setState(() {
                          one=true;
                      two= false;
                      three=false;
                      four= false;
                      five= false;
                      });
                      },
                  ),
                ),
                Container(
                           color: two? AppColors.text2:AppColors.text1,
                  child: ListTile(
               title: Text('Newest',style: _theme.textTheme.headline5.copyWith(fontStyle:two?FontStyle.italic:FontStyle.normal,color: two?AppColors.text1:AppColors.text2)),
                       onTap: () {
                        setState(() {
                             one=false;
                      two= true;
                      three=false;
                      four= false;
                      five= false;
                        });
                        },
                     ),
                ), 
                  Container(
                             color: three? AppColors.text2:AppColors.text1,
                      child: ListTile(
                      
                      title: Text('Customer Review',style: _theme.textTheme.headline5.copyWith(fontStyle:three?FontStyle.italic:FontStyle.normal,color: three?AppColors.text1:AppColors.text2)),
                      onTap: () {
                      setState(() {
                         one=false;
                      two= false;
                      three=true;
                      four= false;
                      five= false;
                      });
                      },
                ),
                  ),   
                Container(
                           color: four? AppColors.text2:AppColors.text1,
                  child: ListTile(
                      
                      title: Text('Price: lowest to high',style: _theme.textTheme.headline5.copyWith(fontStyle:four?FontStyle.italic:FontStyle.normal,color: four?AppColors.text1:AppColors.text2)),
                      onTap: () {
                      setState(() {
                           one=false;
                      two= false;
                      three=false;
                      four= true;
                      five= false;
                      });
                      },
                  ),
                ), 
                Container(
                           color: five? AppColors.text2:AppColors.text1,
                  child: ListTile(
                  
                      title: Text('Price highest to low',style: _theme.textTheme.headline5.copyWith(fontStyle:five?FontStyle.italic:FontStyle.normal,color: five?AppColors.text1:AppColors.text2)),
                      onTap: () {
                         setState(() {
                             one=false;
                      two= false;
                      three=false;
                      four= false;
                      five= true;
                         });  
                      },
                  ),
                ),                   
              ],
            ),
                   ),
          );
        });
                             }),
                           // SizedBox(width:ScreenUtil().setWidth(2)),
                            Text("Sort By",style: _theme.textTheme.headline3,),
                                Spacer(),
                                 IconButton(icon: Icon(Icons.view_list ), onPressed: (){
                       
                                 }),
                      ],
                  ),
                  ),
                          SizedBox(height: ScreenUtil().setHeight(20),),
                          Fav3()
         ],
       ),
     ),
    );
  }
}