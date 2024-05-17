import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_a_z_user/auth/auth_service.dart';
import 'package:shop_a_z_user/db/db_helper.dart';
import 'package:shop_a_z_user/models/app_user_model.dart';

class UserProvider extends ChangeNotifier {
  AppUserModel? appUserModel;

  Future<void> addUser({required User user, String? name, String? phone}) {
    final appUserModel = AppUserModel(
      uid: user.uid,
      email: user.email!,
      userName: name,
      phone: phone,
      userCreationTime: Timestamp.fromDate(user.metadata.creationTime!)
    );
    return DbHelper.addUser(appUserModel);
  }

  getUserInfo() {
    DbHelper.getUserInfo(AuthService.currentUser!.uid).listen((event) {
      if(event.exists) {
        appUserModel = AppUserModel.fromJson(event.data()!);
        notifyListeners();
      }
    });
  }

  Future<bool> doesUserExist(String uid) => DbHelper.doesUserExist(uid);

  Future<void> updateUserProfile({required String field, required String value}) {
    return DbHelper.updateUserProfile(AuthService.currentUser!.uid, {field : value});
  }
}
