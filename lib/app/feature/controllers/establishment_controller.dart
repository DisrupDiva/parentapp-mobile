import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:parentapp/app/core/datasource/establishment_remote_datasource.dart';

import '../../core/models/establishment_model.dart';
import '../../core/models/service_model.dart';

class EstablishmentController extends ChangeNotifier {
  late IEstablishmentRemoteDataSource establishmentRemoteDataSource;

  EstablishmentController(FirebaseFirestore firestore){
    establishmentRemoteDataSource = EstablishmentRemoteDataSource(firestore);
  }

  int documentLimit = 15;
  bool _hasNext = true;
  bool _isFetching = false;

  List<DocumentSnapshot> listEstablishment = [];

  Future getPaginatedEstablishments() async {
    if(_isFetching) return;
    _isFetching = true;
    try {
      final snap = await establishmentRemoteDataSource.getProgressive(documentLimit, listEstablishment.isNotEmpty ? listEstablishment.last : null);
      listEstablishment.addAll(snap.docs);
      if(snap.docs.length < documentLimit) _hasNext = false;
      notifyListeners();
    } catch (e) {
      throw Exception(e);
    }
    _isFetching = false;
  }


  Future<List<EstablishmentModel>> getAll(int limit, DocumentSnapshot startAfter) async {
    try {
      List<EstablishmentModel> establishments = await establishmentRemoteDataSource.getAll();
      return establishments;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<ServiceModel>> getServices(String uuid) async {
    try {
      List<ServiceModel> services = await establishmentRemoteDataSource.getServices(uuid);
      return services;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future create(EstablishmentModel establishment) async {
    try {
      await establishmentRemoteDataSource.create(establishment);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<EstablishmentModel> getById(String uuid) async {
    try {
      EstablishmentModel establishment = await establishmentRemoteDataSource.getById(uuid);
      return establishment;
    } catch (e) {
      throw Exception(e);
    }
  }

}