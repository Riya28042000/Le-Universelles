import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/CreditCard.dart';
import 'package:le_universelles/Components/TextField.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

TextEditingController name= TextEditingController();
TextEditingController number= TextEditingController();
TextEditingController expire= TextEditingController();
TextEditingController ccv= TextEditingController();
  @override
  Widget build(BuildContext context) {
   final  _theme= Theme.of(context);
   
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Payment Methods',
            style: _theme.appBarTheme.textTheme.headline1,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: _theme.appBarTheme.color),
      backgroundColor: AppColors.text1,
      floatingActionButton: FloatingActionButton(onPressed:(){
        showModalBottomSheet(
          isScrollControlled: true,
                              context: context,
                              backgroundColor: Color(0xffF9F9F9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0)),
                              ),
                              builder: (context) {
                                bool check= false;
                                return StatefulBuilder(
                                    builder: (BuildContext context, setState) =>
                                        Container(
                                          height:
                                           MediaQuery.of(context).size.height*0.7,
                                          child: Column(
                                                 children: [
                                                   SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(40)),
                                                   Text(
                                                     "Add new card",
                                                     style: _theme
                                                         .textTheme.headline4
                                                         .copyWith(fontSize: 16),
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
                                                       hint: 'Name on card',
                                                       label: 'Name on card',
                                                       obs: true,
                                                       con: name,
                                                     ),
                                                   ),
                                                   SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(22.19)),
                                                         Padding(
                                                     padding: const EdgeInsets
                                                             .symmetric(
                                                         horizontal:
                                                             LaUniversellesConstants
                                                                     .horizontalPadding /
                                                                 2),
                                                     child: TextF(
                                                       hint: 'Card number',
                                                       label: 'Card number',
                                                       obs: true,
                                                       con: number,
                                                     ),
                                                   ),
                                                   SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(22.19)),
                                                   Padding(
                                                     padding: const EdgeInsets
                                                             .symmetric(
                                                         horizontal:
                                                             LaUniversellesConstants
                                                                     .horizontalPadding /
                                                                 2),
                                                     child: TextF(
                                                       hint: 'Expire Date',
                                                       label: 'Expire Date',
                                                       obs: true,
                                                       con: expire,
                                                     ),
                                                   ),
                                                    SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(22.19)),
                                                   Padding(
                                                     padding: const EdgeInsets
                                                             .symmetric(
                                                         horizontal:
                                                             LaUniversellesConstants
                                                                     .horizontalPadding /
                                                                 2),
                                                     child: TextF(
                                                       hint: 'CCV',
                                                       label: 'CCV',
                                                       obs: true,
                                                       con: ccv,
                                                     ),
                                                   ),
                                                     SizedBox(
                                                       height: ScreenUtil()
                                                           .setHeight(32.18)),
                                                    Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                    value:check,
                                    activeColor: AppColors.text2,
                                    onChanged: (value) {
                                      setState(() {
                                      check = value;
                                      });
                                    }),
                                SizedBox(
                                  width: ScreenUtil().setWidth(5),
                                ),
                                Text(
                                  "Use as default payment method",
                                  style: _theme.textTheme.headline5,
                                )
                              ],
                            ),        
                                                 ],
                                               ),
                                        ));
                              });
      },backgroundColor: AppColors.text2,foregroundColor: AppColors.text2,elevation: 0.0,child: Icon(Icons.add,color: AppColors.text1,),),
      body:   SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
SizedBox(height:ScreenUtil().setHeight(35)),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
  child:   Text('Your payment cards',style: _theme.textTheme.headline5.copyWith(fontWeight: FontWeight.w500),),
),
SizedBox(height:ScreenUtil().setHeight(27)),
Padding(
 padding: const EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding/2),
  child:   CreditCardScreen(),
),
SizedBox(height:ScreenUtil().setHeight(107)),
          ],
        ),
      ),
    );
  }
}