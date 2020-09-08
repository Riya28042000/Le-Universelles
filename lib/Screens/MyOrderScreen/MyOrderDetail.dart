import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Components/DetailsCard.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class MyOrderDetail extends StatefulWidget {
  @override
  _MyOrderDetailState createState() => _MyOrderDetailState();
}

class _MyOrderDetailState extends State<MyOrderDetail> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: LaUniversellesConstants.elevation,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                "My Orders",
                style: _theme.appBarTheme.textTheme.headline1,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(27),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: LaUniversellesConstants.horizontalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order No 1947034',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    '05-12-2019',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: LaUniversellesConstants.horizontalPadding,
              ),
              child: Container(
                width: ScreenUtil.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Tracking Number:',
                          style: _theme.textTheme.headline5
                              .copyWith(color: AppColors.text5),
                        ),
                        Text(
                          'IW3475453455',
                          style: _theme.textTheme.headline6
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      'Delivered',
                      style: _theme.textTheme.headline5.copyWith(
                          fontWeight: FontWeight.w500, color: AppColors.text11),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(16)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                '3 items',
                style: _theme.textTheme.headline5
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(18)),
            DetaiCard(),
            SizedBox(height: ScreenUtil().setHeight(34)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Text(
                'Order information',
                style: _theme.textTheme.headline5
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(12)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping Address:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bridcodes Global. NH 66,',
                        style: _theme.textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                      Text(
                        'Cheettipeedika, Kannur 670004',
                        style: _theme.textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(23)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Method:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(45)),
                  Text(
                    '*** *** ***3947',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(23)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Method:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(45)),
                  Text(
                    '*** *** ***3947',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(23)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Method:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(45)),
                  Text(
                    'FedEx, 3 days, 15\$',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(23)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discount:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(90)),
                  Text(
                    '10%, Personal promo code',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(23)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Amount:',
                    style: _theme.textTheme.headline5
                        .copyWith(color: AppColors.text5),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(65)),
                  Text(
                    'FedEx, 3 days, 15\$',
                    style: _theme.textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(34)),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LaUniversellesConstants.horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      height: ScreenUtil().setHeight(36),
                      width: ScreenUtil().setWidth(150),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.text2),
                      ),
                      child: Center(
                        child: Text('Reorder',
                            style: _theme.textTheme.headline5
                                .copyWith(fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      height: ScreenUtil().setHeight(36),
                      width: ScreenUtil().setWidth(150),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.text2),
                          color: AppColors.text2),
                      child: Center(
                        child: Text('Leave Feedback',
                            style: _theme.textTheme.headline5.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.text1)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(36)),
          ],
        ),
      ),
    );
  }
}
