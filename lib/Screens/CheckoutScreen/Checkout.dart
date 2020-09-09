import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_universelles/Components/BlackButton.dart';
import 'package:le_universelles/Components/DeliveryCard.dart';
import 'package:le_universelles/Screens/SuccessScreen/Success.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Checkout',
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Text(
                "Shipping address",
                style: _theme.textTheme.headline6,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(23.41),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Container(
                height: ScreenUtil().setHeight(120.4),
                width: ScreenUtil().setWidth(382.74),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: AppColors.text5, width: 0.25)),
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
                          right: LaUniversellesConstants.horizontalPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sharun Ravindran',
                            style: _theme.textTheme.headline5
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: null,
                              child: Text(
                                'Change',
                                style: _theme.textTheme.headline5.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.text7),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: LaUniversellesConstants.horizontalPadding,
                          right: LaUniversellesConstants.horizontalPadding / 2),
                      child: Text('Bridcodes Global. NH 66,',
                          style: _theme.textTheme.headline5),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: LaUniversellesConstants.horizontalPadding,
                          right: LaUniversellesConstants.horizontalPadding / 2),
                      child: Text('Cheettipeedika, Kannur 67004',
                          style: _theme.textTheme.headline5),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(19.36)),
            Padding(
              padding: const EdgeInsets.only(
                left: LaUniversellesConstants.horizontalPadding / 2,
                right: LaUniversellesConstants.horizontalPadding,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Payment',
                    style: _theme.textTheme.headline6
                        .copyWith(fontStyle: FontStyle.italic),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: null,
                      child: Text(
                        'Change',
                        style: _theme.textTheme.headline5.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.text7),
                      )),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(18.95)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: ScreenUtil().setHeight(42.36),
                    width: ScreenUtil().setWidth(71.35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset('assets/images/Group.png'),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10)),
                  Text('*** *** ***3947')
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(27.74)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Text(
                'Delievery Method',
                style: _theme.textTheme.headline6
                    .copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(23.41)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: DeliveryCard(),
            ),
            SizedBox(height: ScreenUtil().setHeight(43.49)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  Spacer(),
                  Text(
                    '112\$',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(13.61)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  Spacer(),
                  Text(
                    '15\$',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(13.61)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tax:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  Spacer(),
                  Text(
                    '15\$',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(13.61)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summary:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  Spacer(),
                  Text(
                    '127\$',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(44.82)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding / 2),
              child: BlackButton(buttonText: 'PROCEED',onButtonTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Success()));},),
            ),
            SizedBox(height: ScreenUtil().setHeight(39)),
          ],
        ),
      ),
    );
  }
}
