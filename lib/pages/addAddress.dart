import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController _name = TextEditingController();
  TextEditingController _pin = TextEditingController();
  TextEditingController _mobNo = TextEditingController();
  TextEditingController _addr1 = TextEditingController();
  TextEditingController _streetaddr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text("Add Address"),
        backgroundColor: Colors.blueGrey[700],
      ),
      bottomSheet: Container(
          padding: EdgeInsets.all(10),
          height: size.height * .08,
          color: Colors.blueGrey[900],
          child: Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal[700],
                  borderRadius: BorderRadius.circular(8)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Add Delivery Address",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TextBox(
              ctrl: _name,
              hint: "Eg:Steve",
              textString: "Enter Name",
            ),
            SizedBox(
              height: 20,
            ),
            _TextBox(
              ctrl: _mobNo,
              hint: "Eg:9072827812",
              textString: "Enter Mobile Number",
            ),
            SizedBox(
              height: 20,
            ),
            _TextBox(
              ctrl: _pin,
              hint: "Eg:686016",
              textString: "Enter Pin",
            ),
            SizedBox(
              height: 20,
            ),
            _TextBox(
              ctrl: _addr1,
              hint: "Eg:Obroi Heights",
              textString: "Housing Number and Building",
            ),
            SizedBox(
              height: 20,
            ),
            _TextBox(
              ctrl: _streetaddr,
              hint: "Eg:BackStreet",
              textString: "Enter Street Name",
            ),
          ],
        ),
      ),
    ));
  }
}

class _TextBox extends StatefulWidget {
  _TextBox({this.ctrl, this.hint, this.textString});
  String hint;
  String textString;
  TextEditingController ctrl;
  @override
  __TextBoxState createState() => __TextBoxState();
}

class __TextBoxState extends State<_TextBox> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textString,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 17, color: Colors.white54, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: widget.hint == "Eg:686016" ? size.width * .5 : double.infinity,
          child: TextFormField(
            controller: widget.ctrl,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.grey[700])),
                focusColor: Colors.black,
                focusedBorder: (OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.black))),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                hintText: widget.hint,
                hintStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.normal)),
            style: TextStyle(
                fontSize: 19,
                color: Colors.grey,
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
