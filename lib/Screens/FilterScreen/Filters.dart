import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/Colours.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool xs= false;
  bool s=false;
  bool m=false;
  bool l=false;
  bool xl= false;
  bool all =false;
  bool indian= false;
  bool wes= false;
  bool tra= false;
double _startValue = 105;
double _endValue = 120;
  @override
  Widget build(BuildContext context) {
    final _theme= Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.text1,
          appBar: AppBar(
         centerTitle: false,
         elevation: LaUniversellesConstants.elevation,
         title: Text("Filters",textAlign: TextAlign.left,style:  _theme.appBarTheme.textTheme.headline1.copyWith(fontSize:25),),
          leading: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){
            Navigator.of(context).pop();
          },),
            backgroundColor: _theme.appBarTheme.color
       ),
       body: SingleChildScrollView(
         child: Column(

           mainAxisSize: MainAxisSize.max,
           crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
           children: [
             SizedBox(height:ScreenUtil().setHeight(50)),
             Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Price Range",style: _theme.textTheme.headline6 ,),
             ),
             SizedBox(height:ScreenUtil().setHeight(33)),
             Padding(
             padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
children: [
    Text("\$78",style: _theme.textTheme.headline5,),
    Spacer(),
     Text("\$143",style: _theme.textTheme.headline5,),

],               
               ),
             ),
             SizedBox(height:ScreenUtil().setHeight(5)),   
             RangeSlider(
               
               activeColor: AppColors.text2,
               inactiveColor: AppColors.text5,
    values: RangeValues(_startValue, _endValue),
    min: 78.0,
    max: 143.0,
    onChanged: (values){
      setState(() {
        _startValue = values.start.roundToDouble();
        _endValue = values.end.roundToDouble();
      });
    },
  )  ,
  SizedBox(height:ScreenUtil().setHeight(38)),
  Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Colors",style: _theme.textTheme.headline6 ,),
             ),
               SizedBox(height:ScreenUtil().setHeight(33)),
                 Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Container(
               height: ScreenUtil().setHeight(44),
               child: GestureDetector(
                 onTap: (){},
                 child: Colour()
               ),
             )
             ),
               SizedBox(height:ScreenUtil().setHeight(38)),
           Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Sizes",style: _theme.textTheme.headline6 ,),
             ),
                   SizedBox(height:ScreenUtil().setHeight(33)),
             Padding(
     padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   GestureDetector(
                     onTap: (){
                       setState(() {
                         xs= !xs;
                       });
                     },
                                        child: Container(
                       height: ScreenUtil().setHeight(40),
                       width: ScreenUtil().setWidth(40),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         border: Border.all(color:xs?AppColors.text2:AppColors.text5),
                         color: xs?AppColors.text2:AppColors.text1
                       ),
                       child: Center(child:Text("XS",style: _theme.textTheme.headline6.copyWith(color:xs?AppColors.text1:AppColors.text2),)),
                     ),
                   ),
                   SizedBox(width: ScreenUtil().setWidth(16)),
                    GestureDetector(
                     onTap: (){
                       setState(() {
                         s= !s;
                       });
                     },
                                        child: Container(
                       height: ScreenUtil().setHeight(40),
                       width: ScreenUtil().setWidth(40),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         border: Border.all(color:s?AppColors.text2:AppColors.text5),
                         color: s?AppColors.text2:AppColors.text1
                       ),
                       child: Center(child:Text("S",style: _theme.textTheme.headline6.copyWith(color:s?AppColors.text1:AppColors.text2),)),
                     ),
                   ),
                    SizedBox(width: ScreenUtil().setWidth(16)),
                    GestureDetector(
                     onTap: (){
                       setState(() {
                         m= !m;
                       });
                     },
                                        child: Container(
                       height: ScreenUtil().setHeight(40),
                       width: ScreenUtil().setWidth(40),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         border: Border.all(color:m?AppColors.text2:AppColors.text5),
                         color: m?AppColors.text2:AppColors.text1
                       ),
                       child: Center(child:Text("M",style: _theme.textTheme.headline6.copyWith(color:m?AppColors.text1:AppColors.text2),)),
                     ),
                     
                   ),
                    SizedBox(width: ScreenUtil().setWidth(16)),
                    GestureDetector(
                     onTap: (){
                       setState(() {
                         l= !l;
                       });
                     },
                                        child: Container(
                       height: ScreenUtil().setHeight(40),
                       width: ScreenUtil().setWidth(40),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         border: Border.all(color:l?AppColors.text2:AppColors.text5),
                         color: l?AppColors.text2:AppColors.text1
                       ),
                       child: Center(child:Text("L",style: _theme.textTheme.headline6.copyWith(color:l?AppColors.text1:AppColors.text2),)),
                     ),
                   ),
                    SizedBox(width: ScreenUtil().setWidth(16)),
                    GestureDetector(
                     onTap: (){
                       setState(() {
                         xl= !xl;
                       });
                     },
                                        child: Container(
                       height: ScreenUtil().setHeight(40),
                       width: ScreenUtil().setWidth(40),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         border: Border.all(color:xl?AppColors.text2:AppColors.text5),
                         color: xl?AppColors.text2:AppColors.text1
                       ),
                       child: Center(child:Text("XL",style: _theme.textTheme.headline6.copyWith(color:xl?AppColors.text1:AppColors.text2),)),
                     ),
                   )
                 ],
               ),
             ),
              SizedBox(height:ScreenUtil().setHeight(38)),
             Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
             child: Text("Category",style: _theme.textTheme.headline6 ,),
             ),
             SizedBox(height:ScreenUtil().setHeight(33)),
           Padding(
             padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
            
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                    GestureDetector(
                       onTap: (){
                         setState(() {
                       all= true;
                       indian= false;
                       wes= false;
                       tra= false;
                         });
                       },
                                          child: Container(
                         height: ScreenUtil().setHeight(40),
                         width: ScreenUtil().setWidth(90),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           border: Border.all(color:all?AppColors.text2:AppColors.text5),
                           color: all?AppColors.text2:AppColors.text1
                         ),
                         child: Center(child:Text("All",style: _theme.textTheme.headline6.copyWith(color:all?AppColors.text1:AppColors.text2),)),
                       ),
                     ),
                         SizedBox(width: ScreenUtil().setWidth(20)),
                       GestureDetector(
                       onTap: (){
                         setState(() {
                          all= false;
                       indian= true;
                       wes= false;
                       tra= false;
                         });
                       },
                                          child: Container(
                         height: ScreenUtil().setHeight(40),
                         width: ScreenUtil().setWidth(90),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           border: Border.all(color:indian?AppColors.text2:AppColors.text5),
                           color: indian?AppColors.text2:AppColors.text1
                         ),
                         child: Center(child:Text("Indian",style: _theme.textTheme.headline6.copyWith(color:indian?AppColors.text1:AppColors.text2),)),
                       ),
                     ),
                         SizedBox(width: ScreenUtil().setWidth(20)),
                       GestureDetector(
                       onTap: (){
                         setState(() {
                           all= false;
                       indian= false;
                       wes= true;
                       tra= false;
                         });
                       },
                                          child: Container(
                         height: ScreenUtil().setHeight(40),
                         width: ScreenUtil().setWidth(90),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           border: Border.all(color:wes?AppColors.text2:AppColors.text5),
                           color: wes?AppColors.text2:AppColors.text1
                         ),
                         child: Center(child:Text("Western",style: _theme.textTheme.headline6.copyWith(color:wes?AppColors.text1:AppColors.text2),)),
                       ),
                     ),
               ],
             ),
           ),
           SizedBox(height:ScreenUtil().setHeight(12)),
           Padding(padding: EdgeInsets.symmetric(horizontal:LaUniversellesConstants.horizontalPadding),
child:  GestureDetector(
                       onTap: (){
                         setState(() {
                           all= false;
                       indian= false;
                       wes= true;
                       tra= true;
                         });
                       },
                                          child: Container(
                         height: ScreenUtil().setHeight(40),
                         width: ScreenUtil().setWidth(90),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           border: Border.all(color:tra?AppColors.text2:AppColors.text5),
                           color: tra?AppColors.text2:AppColors.text1
                         ),
                         child: Center(child:Text("Traditional",style: _theme.textTheme.headline6.copyWith(color:tra?AppColors.text1:AppColors.text2),)),
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