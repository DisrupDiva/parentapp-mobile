import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/establishment_model.dart';
import '../models/service_model.dart';

abstract class IEstablishmentRemoteDataSource {
  Future<EstablishmentModel> create(EstablishmentModel establishment);
  Future<List<EstablishmentModel>> getAll();
  Future<EstablishmentModel> getById(String uuid);
  Future<List<ServiceModel>> getServices(String uuid);
  Future<QuerySnapshot> getProgressive(int limit, DocumentSnapshot? startAfter);
}

class EstablishmentRemoteDataSource implements IEstablishmentRemoteDataSource {
  final FirebaseFirestore _firestore;

  EstablishmentRemoteDataSource(this._firestore);

  @override
  Future<EstablishmentModel> create(EstablishmentModel establishment) async {
    try {
      await _firestore.collection("establishments").doc(establishment.uuid).set(establishment.toJson());
      return establishment;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<QuerySnapshot> getProgressive(int limit, DocumentSnapshot? startAfter) async {
    try {
      final refEstablishment = _firestore.collection("establishments").limit(limit);
      if(startAfter == null) {
        return await refEstablishment.get();
      } else {
        return await refEstablishment.startAfterDocument(startAfter).get();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<EstablishmentModel>> getAll() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection("establishments").get();
      return snapshot.docs.map((doc) => EstablishmentModel.fromJson(doc.data() as Map<String,dynamic>)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<EstablishmentModel> getById(String uuid) async {
    try {
      DocumentSnapshot snapshot = await _firestore.collection("establishments").doc(uuid).get();
      return EstablishmentModel.fromJson({});
      // return EstablishmentModel.fromJson(snapshot.data()!);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<ServiceModel>> getServices(String uuid) async {
    try {
      QuerySnapshot snapshot = await _firestore.collection("establishments").doc(uuid).collection("services").get();
      return [];
      // return snapshot.docs.map((doc) => ServiceModel.fromJson(doc.data())).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

}