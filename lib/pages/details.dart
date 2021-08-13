import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/item_model.dart';
import 'package:myapp/widgets/our_custom_button.dart';
import 'package:myapp/widgets/our_detail_row.dart';
import 'package:myapp/widgets/our_sized_box.dart';

class DetailsPage extends StatelessWidget {
  final ItemModel itemmodel;
  const DetailsPage({
    Key? key,
    required this.itemmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(20),
            vertical: ScreenUtil().setSp(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Hero(
                  tag: itemmodel.title,
                  child: Image.asset(
                    itemmodel.image,
                    height: ScreenUtil().setSp(250),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              OurSizedBox(),
              Center(
                child: Text(
                  itemmodel.title,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(25),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              OurSizedBox(),
              OurDetailRow(title: "Price", widget: itemmodel.price),
              Divider(),
              OurSizedBox(),
              OurDetailRow(
                title: "Composition",
                widget: "100% silk",
              ),
              Divider(),
              Spacer(),
              OurButton()
            ],
          ),
        ),
      ),
    );
  }
}
