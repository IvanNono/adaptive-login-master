import 'baseEntity.dart';

class Societe extends BaseEntity{
  late String nom;
  late String sigle;
  late String num;
  late String localisation;
  late String responsable;
  late String telephone;

  Societe({
    required super.id,
    required super.dateCreation,
    required super.dateModification,
    required super.description,
    required this.nom,
    required this.sigle,
    required this.num,
    required this.localisation,
    required this.responsable,
    required this.telephone});
}