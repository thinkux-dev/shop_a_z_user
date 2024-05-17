import 'package:flutter/cupertino.dart';
import 'package:shop_a_z_user/auth/auth_service.dart';
import 'package:shop_a_z_user/db/db_helper.dart';
import 'package:shop_a_z_user/models/telescope_model.dart';
import 'package:shop_a_z_user/utils/helper_functions.dart';

import '../models/cart_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> cartList = [];

  int get totalItemsInCart => cartList.length;

  getAllCartItems() {
    DbHelper.getAllCartItems(AuthService.currentUser!.uid).listen((snapshot) {
      cartList = List.generate(snapshot.docs.length,
              (index) => CartModel.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  bool isTelescopeinCart(String id) {
    bool tag = false;
    for (final cartModel in cartList) {
      if (cartModel.telescopeId == id) {
        tag = true;
        break;
      }
    }
    return tag;
  }

  Future<void> addToCart(TelescopeModel telescopeModel) {
    final cartModel = CartModel(
      telescopeId: telescopeModel.id!,
      telescopeModel: telescopeModel.model,
      price: priceAfterDiscount(telescopeModel.price, telescopeModel.discount),
      imageUrl: telescopeModel.thumbnail.downloadUrl,
    );
    return DbHelper.addToCart(cartModel, AuthService.currentUser!.uid);
  }

  Future<void> removeFromCart(String id) {
    return DbHelper.removeFromCart(id, AuthService.currentUser!.uid);
  }

  void increaseQuantity(CartModel model) {
    model.quantity += 1;
    DbHelper.updateCartQuantity(AuthService.currentUser!.uid, model);
  }

  void decreaceQuantity(CartModel model) {
    if(model.quantity > 1) {
      model.quantity -= 1;
      DbHelper.updateCartQuantity(AuthService.currentUser!.uid, model);
    }
  }

  num priceWithQuantity(CartModel model) => double.parse((model.quantity * model.price).toStringAsFixed(2));

  num getCartSubTotal() {
    num total = 0;
    for (final model in cartList) {
      total += priceWithQuantity(model);
    }
    return total;
  }
  
  Future<void> clearCart() => DbHelper.clearCart(AuthService.currentUser!.uid, cartList);

}
