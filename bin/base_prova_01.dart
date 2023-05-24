import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.https('brasilapi.com.br', '/api/pix/v1/participants');
  final resposta = await http.get(url);
  if (resposta.statusCode == 200) {
    // Colocar seu código aqui...
  }
}