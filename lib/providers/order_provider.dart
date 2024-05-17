import 'package:flutter/cupertino.dart';
import 'package:shop_a_z_user/auth/auth_service.dart';
import 'package:shop_a_z_user/db/db_helper.dart';

import '../models/order_expansion_item.dart';
import '../models/order_model.dart';

class OrderProvider with ChangeNotifier{
  List<OrderModel>  orderList = [];

  Future<void> saveOrder(OrderModel order) {
    return DbHelper.saveOrder(order);
  }

  getMyOrders() {
    DbHelper.getAllOrdersByUser(AuthService.currentUser!.uid).listen((event) {
      orderList = List.generate(event.docs.length, (index) => OrderModel.fromJson(event.docs[index].data()));
      notifyListeners();
    });
  }

  List<OrderExpansionItem> getExpansionItems() {
    return List.generate(orderList.length, (index) {
      final order = orderList[index];
      return OrderExpansionItem(
        header: OrderExpansionHeader(
          orderId: order.orderId,
          orderStatus: order.orderStatus,
          grandTotal: order.totalAmount,
          orderDate: order.orderDate,
        ),
        body: OrderExpansionBody(
          appUser: order.appUser,
          paymentMethod: order.paymentMethod,
          itemDetails: order.itemDetails,
        ),
      );
    });
  }
}