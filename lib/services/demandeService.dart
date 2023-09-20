import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login/services/gate.dart';
import 'dart:async';

import '../models/demande.dart';

Future<http.Response> registerDemande(Demande demande) async {
  String url = Gate.url + 'demande/create';
  final response = await http.post(Uri.parse(url),
    headers: <String, String>{
      'Content-type' : 'application/json; charset=UTF-8',
    },
    body: json.encode(demande.toJon()),
  );
  return response;
}