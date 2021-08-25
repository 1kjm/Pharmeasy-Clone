import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class ArticleWidget extends StatefulWidget {
  @override
  _ArticleWidgetState createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      height: size.height * .3,
      //width: size.width,
      color: Colors.black.withOpacity(.9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "FEATURED BRANDS",
                style: TextStyle(
                    color: Colors.white60, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          Container(
            height: size.height * .19,
            child: ArticleTile(),
          ),
        ],
      ),
    );
  }
}

class ArticleTile extends StatefulWidget {
  @override
  _ArticleTileState createState() => _ArticleTileState();
}

class _ArticleTileState extends State<ArticleTile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 15,
        );
      },
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                //padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // color: Colors.grey[900].withOpacity(.80),
                    // border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(10)),
                width: size.width * .5,
                height: size.height * .15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    products[index].image,
                    fit: BoxFit.cover,
                  ),
                )),
            Text(
              products[index].title,
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );
  }
}
