import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop_a_z_user/models/app_user_model.dart';
import 'package:shop_a_z_user/models/cart_model.dart';
import 'package:shop_a_z_user/models/order_model.dart';
import 'package:shop_a_z_user/models/rating_model.dart';

class DbHelper {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static const String collectionUser = 'Users';
  static const String collectionTelescope = 'Telescopes';
  static const String collectionBrand = 'Brands';
  static const String collectionCart = 'MyCartItems';
  static const String collectionOrder = 'orders';
  static const String collectionRating = 'ratings';

  static Future<void> addUser(AppUserModel appUserModel) {
    return _db.collection(collectionUser)
        .doc(appUserModel.uid)
        .set(appUserModel.toJson());
  }

  static Future<void> addToCart(CartModel cartModel, String uid) {
    return _db.collection(collectionUser)
        .doc(uid).collection(collectionCart)
        .doc(cartModel.telescopeId)
        .set(cartModel.toJson());
  }

  static Future<void> removeFromCart(String telId, String uid) {
    return _db.collection(collectionUser)
        .doc(uid).collection(collectionCart)
        .doc(telId)
        .delete();
  }

  static Future<bool> doesUserExist(String uid) async {
    final snapshot = await _db.collection(collectionUser).doc(uid).get();
    return snapshot.exists;
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllBrands() =>
      _db.collection(collectionBrand).snapshots();

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllTelescopes() =>
      _db.collection(collectionTelescope).snapshots();

  static Stream<DocumentSnapshot<Map<String, dynamic>>> getUserInfo(String uid) =>
      _db.collection(collectionUser).doc(uid).snapshots();

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllOrdersByUser(String uid) =>
    _db.collection(collectionOrder).where('appUserModel.uid', isEqualTo: uid).snapshots();

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllCartItems(String uid) =>
      _db.collection(collectionUser).doc(uid)
      .collection(collectionCart).snapshots();

  static Future<QuerySnapshot<Map<String, dynamic>>> getAllRatings(String id) =>
      _db.collection(collectionTelescope)
          .doc(id)
          .collection(collectionRating).get();

  static Future<void> updateTelescopeField(String id, Map<String, dynamic> map) {
    return _db.collection(collectionTelescope).doc(id).update(map);
  }

  static Future<void> updateCartQuantity(String uid, CartModel model) {
    return _db.collection(collectionUser)
        .doc(uid)
        .collection(collectionCart)
        .doc(model.telescopeId)
        .set(model.toJson());
  }

  static Future<void> saveOrder(OrderModel order) async {
    final wb = _db.batch();
    final orderDoc = _db.collection(collectionOrder).doc(order.orderId);
    wb.set(orderDoc, order.toJson());
    for(final cartModel in order.itemDetails){
      final telSnap = await _db.collection(collectionTelescope)
          .doc(cartModel.telescopeId)
          .get();
      final prevStock = telSnap.data()!['stock'];
      final telDoc = _db.collection(collectionTelescope).doc(cartModel.telescopeId);
      wb.update(telDoc, {'stock' : prevStock - cartModel.quantity});
    }
    final userDoc = _db.collection(collectionUser).doc(order.appUser.uid);
    wb.set(userDoc, order.appUser.toJson());
    return wb.commit();
  }

  static Future<void> clearCart(String uid, List<CartModel> cartList) {
    final wb = _db.batch();
    for(final model in cartList) {
      final doc = _db.collection(collectionUser)
          .doc(uid)
          .collection(collectionCart)
          .doc(model.telescopeId);
      wb.delete(doc);
    }
    return wb.commit();
  }

  static Future<void> addRating(String id, RatingModel ratingModel) {
    return _db.collection(collectionTelescope)
        .doc(id)
        .collection(collectionRating)
        .doc(ratingModel.appUserModel.uid)
        .set(ratingModel.toJson());
  }

  static Future<void> updateUserProfile(String uid, Map<String, String> map) {
    return _db.collection(collectionUser)
        .doc(uid)
        .update(map);
  }
}