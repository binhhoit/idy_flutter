
import 'package:flutter/foundation.dart';

class ChallengeResponse {
  String categoryIds;
  String circleId;
  String circle;
  String createdAt;
  final String id;
  final String name;
  final String description;
  String startAt;
  String endAt;
  List<dynamic> photo;
  String type;

  ChallengeResponse({@required this.id, @required this.name, @required this.description,
    @required this.startAt, @required this.endAt, @required this.photo});

  factory ChallengeResponse.fromJson(Map<String, dynamic> json) {
    return ChallengeResponse(id: json['id'], name: json['name'], description: json['description'],
        startAt: json['startAt'], endAt: json['endAt'], photo: json['photo']);
  }
}
