import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/establishment_model.dart';
import '../models/service_model.dart';

abstract class IServiceRemoteDataSource {
  Future<ServiceModel> create(ServiceModel service);
  Future<List<ServiceModel>> getAll();
  Future<ServiceModel> getById(String uuid);
  Future<List<EstablishmentModel>> getEstablishments(String uuid);
  Future<QuerySnapshot> getTopTenSerices();
}

class ServiceRemoteDataSource implements IServiceRemoteDataSource {
  final FirebaseFirestore _firestore;

  ServiceRemoteDataSource(this._firestore);

  @override
  Future<ServiceModel> create(ServiceModel service) async {
    try {
      await _firestore.collection("services").doc(service.uuid).set(service.toJson());
      return service;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<ServiceModel>> getAll() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection("services").get();
      return snapshot.docs.map((doc) => ServiceModel.fromJson(doc.data() as Map<String,dynamic>)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<ServiceModel> getById(String uuid) async {
    try {
      DocumentSnapshot snapshot = await _firestore.collection("services").doc(uuid).get();
      return ServiceModel.fromJson({});
      // return ServiceModel.fromJson(snapshot.data()!);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<EstablishmentModel>> getEstablishments(String uuid) async {
    try {
      QuerySnapshot snapshot = await _firestore.collection("services").doc(uuid).collection("establishments").get();
      return [];
      // return snapshot.docs.map((doc) => EstablishmentModel.fromJson(doc.data())).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<QuerySnapshot> getTopTenSerices() async {
    final refServices = _firestore.collection("services").limit(10);
    return await refServices.get();
  }

}