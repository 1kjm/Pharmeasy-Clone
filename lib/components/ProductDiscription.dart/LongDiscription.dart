import 'package:flutter/material.dart';

class LongDiscription extends StatefulWidget {
  @override
  _LongDiscriptionState createState() => _LongDiscriptionState();
}

class _LongDiscriptionState extends State<LongDiscription> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      height: size.height * .68,
      color: Colors.black.withOpacity(.9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FREQUENTLY BOUGHT TOGETHER",
            style:
                TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: size.height * .4,
            color: Colors.black,
            child: Text(
              "Horlicks is a Health Drink that has nutrients to support immunity Horlicks is clinically proven to improve 5 signs of growth and is clinically proven to make kids taller, stronger and sharper. Horlicks is scientifically proven to improve power of milk Horlicks is now available in 4 exciting and yummy flavors - Classic malt, Chocolate, Elaichi, Kesar Badam Enjoy with a cup of hot milk or a glass of cold milk Horlicks is a leading force in the ‘Science of Food’ Horlicks has Bio-Available Nutrients* meaning – Nutrients* More Available for Growth. These get absorbed in the blood and are carried to all parts of the body Horlicks contains 9 nutrients (Vit B6, B12, C, D, Copper, Folic Acid, Iron, Selenium and Zinc) which are scientifically proven to support immunity Increases the density of minerals such as^ calcium in bones to give children bigger and stronger bones Horlicks is clinically proven to increase^ lean tissue, making children “stronger” Helps improve attention and concentration^ to make your child sharper Horlicks is clinically proven for more^ haemopoietic nutrients in the blood “Healthier Blood” refers to improvement in the levels of blood health related nutrients (Vitamin A & Folate) in circulation Horlicks is clinically proven to increase^ fat-free mass, making child stronger.",
              style: TextStyle(color: Colors.white),
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Container(
            height: size.height * .001,
            color: Colors.grey,
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Features and Brand Details",
                style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Text(
                "BRAND: Horlicks",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Text(
                "MANUFACTURER NAME: HINDUSTAN UNILEVER LIMITED",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Text(
                "Country Of Origin: INDIA",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                height: size.height * .001,
                color: Colors.grey,
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Text(
                "Country Of Origin: INDIA",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                height: size.height * .05,
                width: size.width,
                child: Center(
                  child: Text(
                    "IF Seal of product is broken it will be non returnable",
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                  ),
                ),
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
