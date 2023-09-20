
class BaseEntity{
  late int id;
  late DateTime dateCreation;
  late DateTime dateModification;
  late String description;

  BaseEntity({
      required this.id,
      required this.dateCreation,
      required this.dateModification,
      required this.description});

  factory BaseEntity.fromJson(Map<String, dynamic> json) => BaseEntity(
    id: json["id"],
    dateCreation: json["dateCreation"],
    dateModification: json["dateModification"],
    description: json["description"],
  );

  Map<String, dynamic> toJon() => {
    "id": id,
    "dateCreation": dateCreation,
    "dateModification": dateModification,
    "description": description,
  };
}