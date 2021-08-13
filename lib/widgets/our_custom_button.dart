import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurButton extends StatelessWidget {
  const OurButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setSp(30),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: ScreenUtil().setSp(55),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.red,
              ),
            ),
            onPressed: () {},
            child: Text("Add to basket",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                  fontWeight: FontWeight.w400,
                )),
          ),
        ),
      ),
    );
  }
}
