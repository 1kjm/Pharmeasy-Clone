import 'package:flutter/material.dart';
import 'package:marketplace/pages/addAddress.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  TextEditingController loc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.blueGrey[900],
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Choose Your \nLocation",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: loc,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.teal[800],
                          ),
                          onPressed: () {
                            print(loc.text);
                          }),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.teal[800])),
                      focusColor: Colors.black,
                      focusedBorder: (OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black))),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      hintText: "Enter Pincode",
                      hintStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.grey[350],
                          fontWeight: FontWeight.normal)),
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.teal[800],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Select Current Location",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.teal[800],
                                fontWeight: FontWeight.bold))
                      ],
                    )),
                SizedBox(
                  height: size.height * .5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddAddress()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(10),
                      height: size.height * .1,
                      width: double.infinity,
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.teal[800],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Login To View Addresses",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.teal[800],
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.teal[800], width: 1),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
