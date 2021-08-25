import 'package:flutter/cupertino.dart';

import 'listModel.dart';

class SaleListModel extends ChangeNotifier {
  List discountViewVar = [];
  double finalAmount = 0;
  //List<SaleList> saleOrderList = [];
  totalAmntCalculation() {
    //take each element in the purchase list through list model instance and calculate the net amount of each
    finalAmount = 0;
    saleOrderList.forEach((element) {
      finalAmount += element.netAmt;
    });

    // finalAmount += amount;
    //return finalAmount;
    notifyListeners();
  }

  removeSaleList() {
    saleOrderList.clear();
    finalAmount = 0;
    notifyListeners();
  }

  totalAmountSumbtractor(double amnt) {
    finalAmount -= amnt;
    notifyListeners();
  }
  /*totalAmntCalculation() {
    //take each element in the purchase list through list model instance and calculate the net amount of each
    finalAmount = 0;
    purchaseList.forEach((element) {
      finalAmount += element.netAmount;
    });

    // finalAmount += amount;
  }

  totalAmountSumbtractor(double amnt) {
    finalAmount -= amnt;




  int orderId;
  int itemCode;
  String name;
  String batch;
  double rate;
  double mrp;
  String expDate;
  int qty;
  int freeQty;
  double discountPercent;
  double discountPercentAmount;
  double scheduledDiscountPercentage;
  double scheduledDiscountPercentageAmt;
  double taxPercentage;
  double sgstAmt;
  double cgstAmt;
  double taxAmt;
  double netAmt;
  }*/

  List<SaleList> saleOrderList = [];
  addToListSaleOrder(
      {String itemname,
      String batch,
      double rate,
      double mrp,
      int quantity,
      double discountPercentage,
      double discountPercentageAmount,
      double taxPercnt,
      double sgstAmnt,
      double cgstAmnt,
      double taxAmnt,
      double netAmnt,
      String cusName,
      String cusAddress,
      String cusEmail,
      double discountedAmnt,
      int phoneNo,
      String paymentMethod,
      double taxableAmnt,
      double cessAmnt,
      double totalAmnt,
      int qr,
      String img}) {
    SaleList listModel = SaleList(
      name: itemname,
      batch: batch,
      rate: rate,
      mrp: mrp,
      qty: quantity,
      discountPercent: discountPercentage,
      discountPercentAmount: discountPercentageAmount,
      taxPercentage: taxPercnt,
      sgstAmt: sgstAmnt,
      cgstAmt: cgstAmnt,
      taxAmt: taxAmnt,
      netAmt: netAmnt,
      customerAddress: cusAddress,
      customerEmail: cusEmail,
      phoneNo: phoneNo,
      paymentMethod: paymentMethod,
      totalAmount: totalAmnt,
      qrCode: qr,
      img: img,
    );

    saleOrderList.add(listModel);

    notifyListeners();
  }

  notifyListeners();
}
