import 'package:cloud_firestore/cloud_firestore.dart';

class EstablishmentModel {
  late String uuid;
  late String name;
  late String address;
  late String phone;
  late String email;
  late String website;
  late String description;
  late String image;
  late String banner;
  late String openingTime;
  late String closingTime;

  // Timestamp createdAt;
  // Timestamp updatedAt;
  List<DocumentReference> services;

  EstablishmentModel({
    required this.uuid,
    required this.name,
    this.address = "",
    this.phone = "",
    this.email = "",
    this.website = "",
    required this.description,
    this.image = "",
    this.banner = "",
    // required this.createdAt,
    // required this.updatedAt,
    this.services = const [],
    this.openingTime = "",
    this.closingTime = "",
  });

  factory EstablishmentModel.fromJson(Map<String, dynamic> json) => EstablishmentModel(
        uuid: json["uuid"] ?? "",
        name: json["name"] ?? "",
        address: json["address"] ?? "",
        phone: json["phone"] ?? "",
        email: json["email"] ?? "",
        website: json["website"] ?? "",
        description: json["description"] ?? "",
        image: json["image"] ?? "",
        banner: json["banner"] ?? "",
        // createdAt: json["created_at"],
        // updatedAt: json["updated_at"] ?? "",
        services: json["services"] == null ? [] : List<DocumentReference>.from(json["services"]),
        openingTime: json["opening_time"] ?? "",
        closingTime: json["closing_time"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "name": name,
        "address": address,
        "phone": phone,
        "email": email,
        "website": website,
        "description": description,
        "image": image,
        "banner": banner,
        // "created_at": createdAt,
        // "updated_at": updatedAt,
        "services": services,
        "opening_time": openingTime,
        "closing_time": closingTime,
      };
}
