import 'package:login/models/baseEntity.dart';

class Beneficiare extends BaseEntity{
  late String nom;
  late String prenom;
  late String fonction;
  late String nationalite;
  late String numIdentite;
  late String telephone;
  late String numCarteSejour;
  late String autre;
  late bool vignetteAuto;
  late bool vignetteMoto;
  late String immatriculation;

  Beneficiare({
    required super.id,
    required super.dateCreation,
    required super.dateModification,
    required super.description,
    required this.nom,
    required this.prenom,
    required this.fonction,
    required this.nationalite,
    required this.numIdentite,
    required this.telephone,
    required this.numCarteSejour,
    required this.autre,
    required this.vignetteAuto,
    required this.vignetteMoto,
    required this.immatriculation
  });


}