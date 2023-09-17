import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IAdRemoteDataSource {
  Future<List<String>> getAllBanners();
}

class AdRemoteDataSource extends IAdRemoteDataSource{
  final FirebaseFirestore _firestore;

  AdRemoteDataSource(this._firestore);

  @override
  Future<List<String>> getAllBanners() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection("home_banners").get();
      return snapshot.docs.map((doc) => doc.get("url").toString()).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}