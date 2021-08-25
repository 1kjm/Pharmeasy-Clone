import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class ImmunityBooster extends StatefulWidget {
  @override
  _ImmunityBoosterState createState() => _ImmunityBoosterState();
}

class _ImmunityBoosterState extends State<ImmunityBooster> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blueGrey[200], Colors.grey[900]],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/defense.png"),
              Text(
                "IMMUNITY BOOSTERS",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          Container(
            height: size.height * .3,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: .5),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(products[index].image),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index].title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Discription",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "₹${products[index].price}",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
