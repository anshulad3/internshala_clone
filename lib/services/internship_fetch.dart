import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/internship_model.dart';

Future<InternshipsMeta> fetchInternships() async {
  final response = await http
      .get(Uri.parse('https://internshala.com/flutter_hiring/search'));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON.
    return InternshipsMeta.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response, throw an exception.
    throw Exception('Failed to load internships');
  }
}
