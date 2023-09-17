class ServiceModel {
  String uuid;
  String name;
  String description;
  String imageUrl;

  ServiceModel({
    required this.uuid,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        uuid: json["uuid"] ?? "",
        name: json["name"] ?? "",
        description: json["description"] ?? "",
        imageUrl: json["image_url"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "name": name,
        "description": description,
        "image_url": imageUrl,
      };
}
