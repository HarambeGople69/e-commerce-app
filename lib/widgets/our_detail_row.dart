import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurDetailRow extends StatelessWidget {
  final String title;
  final String widget;
  const OurDetailRow({
    Key? key,
    required this.title,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(15),
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        Text(
          widget,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(20),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
