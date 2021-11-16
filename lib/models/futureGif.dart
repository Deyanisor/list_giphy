import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Gif.dart';

Future<Gif> GifName() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Gif.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Fallo la conexion');
  }
}
