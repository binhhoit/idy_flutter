import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:idy/model/ChallengeResponse.dart';

Future<ChallengeResponse> fetchChallenge() async {
  final response = await http.get(Uri.https('api-dev.idareyou.dirox.dev', '/Challenges'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ChallengeResponse.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load ChallengeResponse');
  }
}
