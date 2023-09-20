import 'package:flutter/material.dart';
import 'package:login/services/demandeService.dart';
import 'package:intl/intl.dart';
import 'package:login/models/demande.dart';

class CreateDemande extends StatelessWidget {


  final _formKeyD = GlobalKey<FormState> ;


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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Formulaire de demande de Badges et Vignettes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24,),
              const Text(
                'A remplir par la société demandeur',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 15),
              Form(
                //key: _formKeyD,
                child: Column(children: [
                  TextFormField(
                    onChanged: (value){
                      nomS = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'SOCIETE *',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value){
                      sigle = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Sigle *',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value){
                      num = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'N° COE ou récépissé *',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value){
                      localisation = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Adresse et Localisation *',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value){
                      responsable = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nom et Prénom(s) du Responsable *',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value){
                      telephoneS = value;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Téléphone *',
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 50),
              const Text(
                'A remplir par le bénéficiaire',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 15,),
              TextFormField(
                onChanged: (value){
                  nom = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nom *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  prenom = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Prénom *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  fonction = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fonction dans la société *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  nationalite = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nationalité *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  numIdentite = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'N° CNI/Passeport *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  telephone = value;
                },
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Téléphone *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  numCarteSejour = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'N° carte de séjour pour les étrangers *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  telephone = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Téléphone *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  telephone = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Téléphone *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  autre = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Autre (à préciser) *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  telephone = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Téléphone *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  vignetteAuto = bool.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Vignettes : (Auto) *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  vignetteMoto = bool.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Vignettes : (Moto) *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  immatriculation = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Immatriculation *',
                ),
              ),
              /*const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  immatriculation = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Immatriculation *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  immatriculation = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Immatriculation *',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value){
                  immatriculation = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Immatriculation *',
                ),
              ),*/
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Demande demande  = Demande(nom: nom, prenom: prenom,
                      fonction: fonction, nationalite: nationalite,
                      numIdentite: numIdentite, telephone: telephone,
                      numCarteSejour: numCarteSejour, autre: autre,
                      vignetteAuto: vignetteAuto, vignetteMoto: vignetteMoto,
                      immatriculation: immatriculation, nomS: nomS,
                      sigle: sigle, num: num, localisation: localisation,
                      responsable: responsable, telephoneS: telephoneS,
                      id: 4, dateCreation: DateTime.now(),
                      dateModification: DateTime.now(),
                      description: "gogo");

                  registerDemande(demande);
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Demande()),
                  );*/
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(1024, 60),
                ),
                child: const Text(
                  'Valider',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
