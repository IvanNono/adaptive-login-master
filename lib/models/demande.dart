import 'dart:convert';
import 'dart:js_interop';

import 'package:login/models/baseEntity.dart';
import 'package:login/models/beneficiaire.dart';
import 'package:login/models/societe.dart';

Demande demandeJson(String str) =>
    Demande.fromJson(json.decode(str));

String demandeToJson(Demande demande) =>
    json.encode(demande.toJon());

class Demande extends BaseEntity{
  //late Beneficiare beneficiare;
  //late Societe societe;

  //Bénéficiaire
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

  //Societe
  late String nomS;
  late String sigle;
  late String num;
  late String localisation;
  late String responsable;
  late String telephoneS;

  Demande({
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
    required this.immatriculation,
    required this.nomS,
    required this.sigle,
    required this.num,
    required this.localisation,
    required this.responsable,
    required this.telephoneS,
    required super.id,
    required super.dateCreation,
    required super.dateModification,
    required super.description
  });



  factory Demande.fromJson(Map<String, dynamic> json) => Demande(
    nom: json["nom"],
    prenom: json["prenom"],
    fonction: json["fonction"],
    nationalite: json["nationalite"],
    numIdentite: json["numIdentite"],
    telephone: json["telephone"],
    numCarteSejour: json["numCarteSejour"],
    autre: json["autre"],
    vignetteAuto: json["vignetteAuto"] as bool,
    vignetteMoto: json["vignetteMoto"] as bool,
    immatriculation: json["immatriculation"],
    nomS: json["nomS"],
    sigle: json["sigle"],
    num: json["num"],
    localisation: json["localisation"],
    responsable: json["responsable"],
    telephoneS: json["telephoneS"],
    id: json["id"],
    dateCreation: json["dateCreation"],
    dateModification: json["dateModification"],
    description: json["description"]
  );

  Map<String, dynamic> toJon() => {
    "nom": nom,
    "prenom": prenom,
    "fonction": fonction,
    "nationalite": nationalite,
    "numIdentite": numIdentite,
    "telephone": telephone,
    "numCarteSejour": numCarteSejour,
    "autre": autre,
    "vignetteAuto": vignetteAuto.toJS,
    "vignetteMoto": vignetteMoto,
    "immatriculation": immatriculation,
    "nomS": nomS,
    "sigle": sigle,
    "num": num,
    "localisation": localisation,
    "responsable": responsable,
    "telephoneS": telephoneS,
    "id": id,
    "dateCreation": dateCreation,
    "dateModification": dateModification,
    "description": description
  };
}