import 'dart:convert';

class ExPost {
  int userId;
  int id;
  String title;
  String body;

  ExPost(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  //model轉json
  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "id": id,
      "title": title,
      "body": body,
    };
  }

  String todoModelToJson(List<ExPost> data) =>
      json.encode(List<dynamic>.from(data.map((e) => e.toJson())));

  //json轉model
  factory ExPost.fromJson(Map<String, dynamic> json) => ExPost(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  List<ExPost> todoModelFromJson(String str) =>
      List<ExPost>.from(json.decode(str).map((x) => ExPost.fromJson(x)));
}
