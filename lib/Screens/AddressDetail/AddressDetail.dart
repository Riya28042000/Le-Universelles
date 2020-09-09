import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Screens/AddressScreen/Address.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class AddressDetail extends StatefulWidget {
  @override
  _AddressDetailState createState() => _AddressDetailState();
}

class _AddressDetailState extends State<AddressDetail> {
  ScrollController _controller = new ScrollController();
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: LaUniversellesConstants.elevation,
          title: Text(
            "Addresses",
            textAlign: TextAlign.left,
            style:
                _theme.appBarTheme.textTheme.headline1.copyWith(fontSize: 25),
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
      backgroundColor: _theme.appBarTheme.color,
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Address()));},child: Icon(Icons.add, color: AppColors.text1,),backgroundColor: AppColors.text2,foregroundColor: AppColors.text2,elevation: 0.0,),
      body: SingleChildScrollView(
     //   physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(45)),
            Container(
               padding: EdgeInsets.symmetric(horizontal: LaUniversellesConstants.horizontalPadding),
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: ScreenUtil().setHeight(26)),
                shrinkWrap: true,
                  itemCount: 4,
                  controller: _controller,
                  scrollDirection: Axis.vertical,
                 physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      height: ScreenUtil().setHeight(147),
                      width: ScreenUtil().setWidth(370),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: AppColors.text5, width: 0.25)),
                            //   padding:const EdgeInsets.only(
                            // left: LaUniversellesConstants.horizontalPadding,
                            // right:
                            //     LaUniversellesConstants.horizontalPadding /
                            //         2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: ScreenUtil().setHeight(18.9)),
                          Padding(
                           padding: const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sharun Ravindran',
                                  style: _theme.textTheme.headline5
                                      .copyWith(
                                          fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                GestureDetector(
                                    onTap: null,
                                    child: Text(
                                      'Edit',
                                      style: _theme.textTheme.headline5
                                          .copyWith(
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.text7),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(8.35)),
                          Padding(
                            padding: const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                            child: Text('Bridcodes Global. NH 66,',
                                style: _theme.textTheme.headline5),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                            child: Text('Cheettipeedika, Kannur 67004',
                                style: _theme.textTheme.headline5),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(14.7)),
                          Padding(
                            padding: const EdgeInsets.only(
                            left: LaUniversellesConstants.horizontalPadding/2,
                            right:
                                LaUniversellesConstants.horizontalPadding /
                                    2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                    value: isCheck,
                                    activeColor: AppColors.text2,
                                    onChanged: (value) {
                                      setState(() {
                                        isCheck = value;
                                      });
                                    }),
                                SizedBox(
                                  width: ScreenUtil().setWidth(5),
                                ),
                                Text(
                                  "Use as the shipping address",
                                  style: _theme.textTheme.headline5,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(4)),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: ScreenUtil().setHeight(25),)
          ],
        ),
      ),
    );
  }
}
