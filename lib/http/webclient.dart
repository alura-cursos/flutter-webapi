
import 'package:http/http.dart';

void findAll() async {
  final Response response = await get('http://192.168.20.249:8080/transactions');
  print(response.body);
}