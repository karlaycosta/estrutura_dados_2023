import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.https('brasilapi.com.br', '/api/banks/v1');
  final resposta = await http.get(url);
  if (resposta.statusCode == 200) {
    final dados = jsonDecode(resposta.body) as List;
    for (final banco in dados) {
      final code = banco['code'] as int?;
      final name = banco['name'] as String?;
      if (code != null) {
        if (code >= 10 && code <= 20) {
          print('Code: $code - $name');
        }
      }
    }
  }
}
