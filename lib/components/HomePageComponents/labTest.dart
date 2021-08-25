import 'package:flutter/material.dart';
import 'package:marketplace/models/product.dart';

class LabTest extends StatefulWidget {
  @override
  _LabTestState createState() => _LabTestState();
}

class _LabTestState extends State<LabTest> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
        height: size.height * .27,
        //width: size.width,
        color: Colors.black.withOpacity(.85),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recomended Lab Test For You",
              style:
                  TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Text(
              "Free Sample PickUp*",
              style: TextStyle(
                  color: Colors.blue[400], fontWeight: FontWeight.bold),
            ),
            Container(
                padding: EdgeInsets.all(5),
                height: size.height * .175,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        padding: EdgeInsets.only(
                            top: 25, left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[900].withOpacity(.80),
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(10)),
                        width: size.width * .55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hba1C (Glycosylated healing",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: Text(
                                "Available at 1 certified lab",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                            Text(
                              "₹400",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ));
                  },
                ))
          ],
        ));
  }
}
