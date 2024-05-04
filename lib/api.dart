import 'dart:convert';

import 'package:http/http.dart' as http;

class TMDB {
  final endpoint = 'http://54.234.163.158:5000/get_visit_count/?date=2024-04-28 ';

  final apiKey = 'http://54.234.163.158:5000/get_visit_count/?date=2024-04-28';
  Future<void> fetchUers()async{
    print('Visit Registered Succesfully');
    const url = ' http://54.234.163.158:5000/get_visit_count/?date=2024-04-28 ';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);

    print("Fecthed");
  }

  Future<List<Map<String, dynamic>>> users(
      {type = 'visit_counts"', time = 'week'}) async {
    var result = await http
        .get(Uri.parse('$endpoint/'));
    var body = jsonDecode(result.body);
    return List.castFrom<dynamic, Map<String, dynamic>>(body['results']);
  }
}