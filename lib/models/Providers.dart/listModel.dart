class SaleList {
  SaleList(
      {this.name,
      this.batch,
      this.rate,
      this.qty,
      this.mrp,
      this.discountPercent,
      this.discountPercentAmount,
      this.taxPercentage,
      this.sgstAmt,
      this.cgstAmt,
      this.taxAmt,
      this.netAmt,
      // this.orderId,
      this.customerAddress,
      this.customerEmail,
      this.phoneNo,
      this.paymentMethod,
      this.totalAmount,
      this.qrCode,
      this.discountedAmnt,
      this.img});
//sale order
  String name;
  double discountedAmnt;
  String batch;
  double rate;
  double mrp;
  int qty;
  double discountPercent;
  double discountPercentAmount;
  double taxPercentage;
  double sgstAmt;
  double cgstAmt;
  double taxAmt;
  double netAmt;
//Sale order Details
  String customerName;
  String customerAddress;
  String customerEmail;
  int phoneNo;
  String paymentMethod;
  double taxableAmount;
  double cessAmount;
  double totalAmount;
  int qrCode;
  String img;

  String get getName => name;
  String get getBatch => batch;
  double get getRate => rate;
  double get getMrp => mrp;
  double get getDiscAmnt => discountedAmnt;
  int get getQty => qty;
  double get getDiscountPercent => discountPercent;
  double get getDiscountPercentAmount => discountPercentAmount;
  double get getTaxPercentage => taxPercentage;
  double get getSgst => sgstAmt;
  double get getCgst => cgstAmt;
  double get getTaxAmnt => taxAmt;
  double get getnetAmnt => netAmt;
  String get getCustomerName => customerName;
  String get getCustomerAddress => customerAddress;
  String get getCustomerEmail => customerEmail;
  int get getCustomerPhoneNo => phoneNo;
  String get getPaymentMethod => paymentMethod;
  double get getTaxableAmount => taxableAmount;
  double get getCessAmount => cessAmount;
  double get getTotalAmount => totalAmount;
  int get getQr => qrCode;
  String get getImg => img;
}
