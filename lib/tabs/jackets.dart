import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/models/item_model.dart';
import 'package:myapp/pages/details.dart';
import 'package:myapp/widgets/items.dart';

class Jacket extends StatefulWidget {
  const Jacket({Key? key}) : super(key: key);

  @override
  _JacketState createState() => _JacketState();
}

class _JacketState extends State<Jacket> {
  List<ItemModel> models = [
    ItemModel(
      image: "images/jacket1.jpeg",
      price: "199.99",
      title: "Backpack Smuley",
    ),
    ItemModel(
      image: "images/jacket2.jpeg",
      price: "299.99",
      title: "Pink Umbrella",
    ),
    ItemModel(
      image: "images/jacket3.jpeg",
      price: "599.99",
      title: "Backpack Smuley",
    ),
    ItemModel(
      image: "images/jacket1.jpeg",
      price: "499.99",
      title: "Red Harambe",
    ),
    ItemModel(
      image: "images/jacket2.jpeg",
      price: "299.99",
      title: "Shipt Goku",
    ),
    ItemModel(
      image: "images/jacket3.jpeg",
      price: "299.99",
      title: "Backpack Drageo",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(
              5,
            ),
            vertical: ScreenUtil().setSp(
              5,
            ),
          ),
          child: GridView.builder(
              itemCount: models.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: ScreenUtil().setSp(10),
                crossAxisSpacing: ScreenUtil().setSp(10),
              ),
              // maxCrossAxisExtent: 500,
              // childAspectRatio: 3 / 2,

              itemBuilder: (BuildContext context, index) {
                return Hero(
                  tag:  models[index].title,
                  child: Item(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsPage(
                          itemmodel:  models[index],
                        );
                      }));
                    },
                    
                    image: models[index].image,
                    price: models[index].price,
                    name: models[index].title,
                  ),
                );
              })),
    );
  }
}
