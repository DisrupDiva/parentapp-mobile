import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../core/datasource/ad_remote_datasource.dart';

class AdController extends ChangeNotifier {
  late IAdRemoteDataSource adRemoteDataSource;

  AdController(FirebaseFirestore firestore){
    adRemoteDataSource = AdRemoteDataSource(firestore);
  }

  Future<List<String>> getAllBanners() async {
    try {
      List<String> bannerUrlList = await adRemoteDataSource.getAllBanners();
      print(bannerUrlList);
      return bannerUrlList;
    } catch (e) {
      throw Exception(e);
    }
  }
}