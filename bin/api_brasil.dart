import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final end = Uri.https('brasilapi.com.br', '/api/feriados/v1/2023');
  final req = await http.get(end);
  if (req.statusCode == 200) {
    final feriados = jsonDecode(req.body) as List;
    print(feriados.map((e) => Feriado.fromJson(e)).toList());
  }
}

class Feriado {
  final String? fullName;
  final String name;
  final String type;
  final DateTime date;

  Feriado({
    this.fullName,
    required this.name,
    required this.type,
    required this.date,
  });

  factory Feriado.fromJson(Map<String, dynamic> json) {
    return Feriado(
      fullName: json['fullName'],
      name: json['name'],
      type: json['type'],
      date: DateTime.parse(json['date']),
    );
  }

  @override
  String toString() {
    return 'Dia ${date.day}/${date.month} $name';
  }
}
