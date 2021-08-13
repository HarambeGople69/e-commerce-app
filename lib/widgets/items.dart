import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  final String image;
  final String price;
  final Function function;
  final String name;
  const Item({
    Key? key,
    required this.image,
    required this.price,
    required this.name,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      // height: ScreenUtil().setSp(300),
      // width: MediaQuery.of(context).size.width * 0.5,
      // color: Colors.red,
      child: Stack(
        // alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: ScreenUtil().setSp(
              20,
            ),
            child: Image.asset(
              image,
              height: ScreenUtil().setSp(100),
              width: ScreenUtil().setSp(100),
            ),
          ),
          Positioned(
            top: ScreenUtil().setSp(5),
            right: ScreenUtil().setSp(5),
            child: Icon(Icons.bookmark),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setSp(5),
                vertical: ScreenUtil().setSp(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(20),
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(
                  ScreenUtil().setSp(10),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      ScreenUtil().setSp(20),
                    ),
                  ),
                  color: Colors.black,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: ScreenUtil().setSp(20),
                ),
              ))
        ],
      ),
    );
  }
}
