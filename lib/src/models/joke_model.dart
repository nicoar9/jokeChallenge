import 'dart:convert';

JokeModel jokeFromJson(String str) => JokeModel.fromJson(json.decode(str));

class JokeModel {
  JokeModel({this.joke, this.photoUrl, this.likes});

  String joke;
  String photoUrl;
  int likes;

  factory JokeModel.fromJson(Map<String, dynamic> json) => JokeModel(
        joke: json["joke"],
      );
}
