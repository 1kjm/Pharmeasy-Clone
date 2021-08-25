import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/models/Providers.dart/ListsaleModel.dart';
import 'package:marketplace/pages/Cart.dart';
import 'package:provider/provider.dart';

class CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  //String dropDownValue = "";
  //List<String> items = ["1", '2', '3', '4'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  dropDownValue = items.isEmpty ? "1" : items[0];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      // height: size.height,
      color: Colors.black.withOpacity(.9),
      child: Column(
        children: [
          DottedBorder(
            color: Colors.grey,
            borderType: BorderType.RRect,
            radius: Radius.circular(5),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Icon(
                    Icons.delivery_dining,
                    color: Colors.teal,
                    size: 30,
                  ),
                  Text(
                    "Free Delivery on cart value above ₹500",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          Consumer<SaleListModel>(builder: (context, sale, child) {
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Provider.of<SaleListModel>(context, listen: false)
                  .saleOrderList
                  .length,
              itemBuilder: (context, i) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            sale.saleOrderList[i].img,
                            height: size.height * .1,
                            width: size.height * .1,
                            alignment: Alignment.center,
                            fit: BoxFit.fitHeight,
                          ),
                          VerticalDivider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                sale.saleOrderList[i].name,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: size.width * .15),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (sale.saleOrderList.length == 1) {
                                    sale.saleOrderList.removeAt(i);
                                    sale.totalAmountSumbtractor(
                                        sale.saleOrderList[i].mrp);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CartPage()));
                                  } else {
                                    sale.saleOrderList.removeAt(i);
                                    sale.totalAmountSumbtractor(
                                        sale.saleOrderList[i].mrp);
                                  }
                                });
                              })
                        ],
                      ),
                      SizedBox(height: size.height * .02),
                      Row(
                        children: [
                          SizedBox(
                            width: size.height * .1,
                          ),
                          Container(
                            height: 40,
                            width: 80,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              //qty editor
                              textAlign: TextAlign.center,

                              ///
                              onChanged: (value) {
                                setState(() {
                                  sale.saleOrderList[i].qty = int.parse(value);
                                  sale.saleOrderList[i].netAmt =
                                      sale.saleOrderList[i].mrp *
                                          int.parse(value);
                                  sale.totalAmntCalculation();
                                });
                              },
                            ), /*DropdownButton(
                              underline: Container(
                                color: Colors.black.withOpacity(0.8),
                              ),
                              value: dropDownValue,
                              style: TextStyle(color: Colors.grey),
                              items: items.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropDownValue = newValue;
                                  sale.saleOrderList[i].qty =
                                      int.parse(newValue);
                                  sale.totalAmntCalculation();
                                });
                              },
                            ),*/
                          ),
                          SizedBox(
                            width: size.height * .01,
                          ),
                          Container(
                            color: Colors.red[400],
                            width: size.width * .18,
                            height: size.height * .03,
                            child: Center(
                                child: Text(
                              "10% OFF",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "MRP:${sale.saleOrderList[i].mrp.toStringAsFixed(2)}",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "₹${sale.saleOrderList[i].mrp - (sale.saleOrderList[i].mrp * (10 / 100))}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add More Items",
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Icon(
                  Icons.add_circle,
                  color: Colors.white,
                  size: 27,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
