import 'package:flutter/material.dart';

class FooterDiscrp extends StatefulWidget {
  @override
  _FooterDiscrpState createState() => _FooterDiscrpState();
}

class _FooterDiscrpState extends State<FooterDiscrp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      height: size.height * .2,
      color: Colors.black.withOpacity(.85),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "-A lincensed Pharmacy will be delivering your product based on availibility and fastest delivery",
            maxLines: 2,
            style: TextStyle(
                fontSize: 13,
                color: Colors.grey[700],
                fontWeight: FontWeight.normal),
          ),
          Text(
            "-Prices are indicative and may change after billing",
            maxLines: 2,
            style: TextStyle(
                fontSize: 13,
                color: Colors.grey[700],
                fontWeight: FontWeight.normal),
          ),
          Text(
            "-A Technology platform to connect sellers and buyers and is not involved in sale of any product. Offer for sale on the products and services are provided/sold by the sellers only.",
            maxLines: 4,
            style: TextStyle(
                fontSize: 13,
                color: Colors.grey[700],
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
