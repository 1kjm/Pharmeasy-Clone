import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class TopCategories extends StatefulWidget {
  @override
  _TopCategoriesState createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .71,
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      decoration: BoxDecoration(color: Colors.black.withOpacity(.85)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Top Categories",
                style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "VIEW ALL",
                  style: TextStyle(
                      color: Colors.blueGrey[700], fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Container(
            height: size.height * .6,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,

              // scrollDirection: Axis.horizontal,
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.1),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: size.height * .3,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      products[index].image,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
