import 'dart:convert';
import 'dart:developer';

import 'package:http_logger/log_level.dart';
import 'package:http_logger/logging_middleware.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:idy/model/ChallengeResponse.dart';


List<ChallengeResponse> challengeModelFromJson(String str) => List<ChallengeResponse>.from(
    json.decode(str).map((x) => ChallengeResponse.fromJson(x)));


Future<List<ChallengeResponse>> fetchChallenge() async {
  HttpWithMiddleware httpClient = HttpWithMiddleware.build(middlewares: [
    HttpLogger(logLevel: LogLevel.BODY),
  ]);

  final response = await httpClient.get("https://api-dev.idareyou.dirox.dev/api/v1/Challenges",
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization':'5ZVPy34EuAdLxBvPwDAEzrDMHRcBFdChfPt1wf7e8PJXWRvEFz0fEjY3YBtfsHt0'
    },
  );
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    log('data: ${response.body}');
    return challengeModelFromJson(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load ChallengeResponse');
  }
}
