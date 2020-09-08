import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:le_universelles/Utils/AppColour.dart';
import 'package:le_universelles/Utils/LaUniversellesConstants.dart';

class DetaiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: LaUniversellesConstants.horizontalPadding),
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: ScreenUtil().setHeight(26)),
          shrinkWrap: true,
          itemCount: 3,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              height: ScreenUtil().setHeight(105),
              width: ScreenUtil().setWidth(343),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: AppColors.text5, width: 0.25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: ScreenUtil().setHeight(104),
                          width: ScreenUtil().setWidth(104),
                          decoration: BoxDecoration(
                              color: AppColors.text5,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(11)),
                        Padding(
                          padding: const EdgeInsets.only(right: 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Pullover',
                                  style: _theme.textTheme.headline6
                                      .copyWith(fontWeight: FontWeight.w600)),
                              Text(
                                'Mango',
                                style: _theme.textTheme.headline2.copyWith(
                                    fontSize: 11, color: AppColors.text5),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Color:',
                                    style: _theme.textTheme.headline2.copyWith(
                                        fontSize: 11, color: AppColors.text5),
                                  ),
                                  Text(
                                    'Gray',
                                    style: _theme.textTheme.headline2
                                        .copyWith(fontSize: 11),
                                  ),
                                  SizedBox(width: ScreenUtil().setWidth(21)),
                                  Text(
                                    'Size:',
                                    style: _theme.textTheme.headline2.copyWith(
                                        fontSize: 11, color: AppColors.text5),
                                  ),
                                  Text(
                                    'L',
                                    style: _theme.textTheme.headline2
                                        .copyWith(fontSize: 11),
                                  ),
                                ],
                              ),
                              SizedBox(width: ScreenUtil().setWidth(11)),
                              Container(
                                width: ScreenUtil().setWidth(180),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Units:',
                                          style: _theme.textTheme.headline2
                                              .copyWith(
                                                  fontSize: 11,
                                                  color: AppColors.text5),
                                        ),
                                        Text(
                                          '1',
                                          style: _theme.textTheme.headline2
                                              .copyWith(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '51\$',
                                      style: _theme.textTheme.headline2
                                          .copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ],
              ),
            );
          }),
    );
  }
}
