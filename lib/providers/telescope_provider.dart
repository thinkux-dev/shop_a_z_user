import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:shop_a_z_user/db/db_helper.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shop_a_z_user/models/app_user_model.dart';
import 'package:shop_a_z_user/models/rating_model.dart';
import 'package:shop_a_z_user/models/telescope_model.dart';
import 'package:shop_a_z_user/utils/contants.dart';

import '../models/brand_model.dart';
import '../models/image_model.dart';

class TelescopeProvider with ChangeNotifier {
  List<Brand> brandList = [];
  List<TelescopeModel> telescopeList = [];

  getAllBrands() {
    DbHelper.getAllBrands().listen((snapshot) {
      brandList = List.generate(snapshot.docs.length,
              (index) => Brand.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  getAllTelescopes() {
    DbHelper.getAllTelescopes().listen((snapshot) {
      telescopeList = List.generate(snapshot.docs.length,
              (index) => TelescopeModel.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  TelescopeModel findTelescopeById(String id) =>
    telescopeList.firstWhere((element) => element.id == id);

  Future<void> updateTelescopeField(String id, String field, dynamic value) {
    return DbHelper.updateTelescopeField(id, {field : value});
  }

  Future<ImageModel> uploadImage(String imageLocalPath) async {
    final String imageName = 'image_${DateTime
        .now()
        .millisecondsSinceEpoch}';

    final photoRef = FirebaseStorage.instance
        .ref()
        .child('$imageDirectory$imageName');

    final uploadTask = photoRef.putFile(File(imageLocalPath));
    final snapshot = await uploadTask.whenComplete(() => null);
    final url = await snapshot.ref.getDownloadURL();
    return ImageModel(
      imageName: imageName,
      directoryName: imageDirectory,
      downloadUrl: url,
    );
  }

  Future<void> addRating(String id, AppUserModel appUserModel, num rating) async {
    final ratingModel = RatingModel(appUserModel: appUserModel, rating: rating);
    await DbHelper.addRating(id, ratingModel);
    final snapshot = await DbHelper.getAllRatings(id);
    final List<RatingModel> ratingList = List.generate(snapshot.docs.length, (index) =>
      RatingModel.fromJson(snapshot.docs[index].data()));

    //Calculate total rating
    num total = 0;
    for(final rating in ratingList) {
      total += rating.rating;
    }
    //Calculate avg rating
    final avgRating = total / ratingList.length;
    return DbHelper.updateTelescopeField(id, {'avgRating' : avgRating});
  }

  Future<void> deleteImage(String id, ImageModel image) async {
    final photoRef = FirebaseStorage.instance.ref()
        .child('${image.directoryName}${image.imageName}');
    return photoRef.delete();
  }
}
