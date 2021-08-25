import 'package:flutter/material.dart';
import 'package:marketplace/components/HomePageComponents/Articles.dart';
import 'package:marketplace/components/HomePageComponents/ButtonSet.dart';
import 'package:marketplace/components/HomePageComponents/CaroselSlider2.dart';
import 'package:marketplace/components/HomePageComponents/CustomSlider.dart';
import 'package:marketplace/components/HomePageComponents/ImmunityBoosters.dart';
import 'package:marketplace/components/HomePageComponents/Previously.dart';
import 'package:marketplace/components/HomePageComponents/SpotLight.dart';
import 'package:marketplace/components/HomePageComponents/TopCategories.dart';
import 'package:marketplace/components/HomePageComponents/customSearch.dart';
import 'package:marketplace/components/HomePageComponents/dealOFDay.dart';
import 'package:marketplace/components/HomePageComponents/featured.dart';
import 'package:marketplace/components/HomePageComponents/labTest.dart';
import 'package:marketplace/components/HomePageComponents/productTypes.dart';
import 'package:marketplace/models/product.dart';
import 'package:marketplace/pages/Cart.dart';
import 'package:marketplace/pages/ProductDiscription.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductModel product = ProductModel();
  int _currentIndex = 0;
  List<Widget> tabs = [
    SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomSliderWidget(),
          ProductTypes(),
          Spotlight(),
          Container(
            height: 10,
            color: Colors.black.withOpacity(.8),
          ),
          Container(
            height: 10,
            color: Colors.grey[900].withOpacity(.7),
          ),
          //   DealOfDay(),
          ImmunityBooster(),
          //Featured(),
          Container(
            height: 10,
            color: Colors.grey[900].withOpacity(.7),
          ),
          LabTest(),
          Container(
            height: 10,
            color: Colors.grey[900].withOpacity(.7),
          ),
          CaroselSlider1(),
          TopCategories(),
          Container(
            height: 10,
            color: Colors.grey[900].withOpacity(.7),
          ),
          CustomSliderWidget(),
          PrevBrowsedItem(),
          ButtonSet(),
          ArticleWidget()
        ],
      ),
    ),
    Center(child: Text("HealthCare")),
    Center(child: Text("Diagnostics")),
    Center(child: Text("Notifications")),
    Center(child: Text("Account")),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Market Place"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: SearchBar("Kottayam"),
            ),
            backgroundColor: Colors.blueGrey[700],
            actions: [
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  })
            ],
            leading: Icon(Icons.add_circle_outline_outlined),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey[700],
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                // ignore: deprecated_member_use
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey[700],
                icon: Icon(Icons.sanitizer),
                title: Text("HealthCare"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey[700],
                icon: Icon(Icons.healing),
                title: Text("Diagnostics"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey[700],
                icon: Icon(Icons.notifications),
                title: Text("Notifications"),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blueGrey[700],
                icon: Icon(Icons.person),
                title: Text("Account"),
              )
            ],
          ),
          body: tabs[_currentIndex]),
    );
  }
}
