import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:parentapp/app/core/datasource/services_remote_datasource.dart';
import 'package:parentapp/app/core/models/establishment_model.dart';

import '../../core/models/service_model.dart';

class ServiceController extends ChangeNotifier{
  late IServiceRemoteDataSource establishmentRemoteDataSource;

  ServiceController(FirebaseFirestore firestore){
    establishmentRemoteDataSource = ServiceRemoteDataSource(firestore);
  }

  Future<List<ServiceModel>> getAll() async {
    try {
      List<ServiceModel> services = await establishmentRemoteDataSource.getAll();
      return services;
    } catch (e) {
      throw Exception(e);
    }
  }

  List<DocumentSnapshot> listService = [];

  Future getTopTenServices() async {
    try {
      final snap = await establishmentRemoteDataSource.getTopTenSerices();
      listService.addAll(snap.docs);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<EstablishmentModel>> getEstablishments(String uuid) async {
    try {
      List<EstablishmentModel> establishments = await establishmentRemoteDataSource.getEstablishments(uuid);
      return establishments;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future create(ServiceModel service) async {
    try {
      await establishmentRemoteDataSource.create(service);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<ServiceModel> getById(String uuid) async {
    try {
      ServiceModel service = await establishmentRemoteDataSource.getById(uuid);
      return service;
    } catch (e) {
      throw Exception(e);
    }
  }
}