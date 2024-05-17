import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop_a_z_user/models/app_user_model.dart';
import 'package:shop_a_z_user/models/cart_model.dart';

class OrderExpansionItem {
  OrderExpansionHeader header;
  OrderExpansionBody body;
  bool isExpanded;
  OrderExpansionItem({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}

class OrderExpansionHeader {
  String orderId;
  String orderStatus;
  Timestamp orderDate;
  num grandTotal;

  OrderExpansionHeader({
    required this.orderId,
    required this.orderStatus,
    required this.orderDate,
    required this.grandTotal,
  });
}

class OrderExpansionBody {
  AppUserModel appUser;
  String paymentMethod;
  List<CartModel> itemDetails;

  OrderExpansionBody({
    required this.appUser,
    required this.paymentMethod,
    required this.itemDetails,
  });
}
