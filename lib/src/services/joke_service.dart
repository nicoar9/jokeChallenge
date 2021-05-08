import 'package:get/get.dart';
import 'package:jokefy/src/models/joke_model.dart';

class JokeService extends GetConnect {
  final String apiUrl = 'https://icanhazdadjoke.com';

  Future<JokeModel> getRandomJoke() async {
    final resp = await get(
      apiUrl,
      headers: {"Accept": "application/json"},
    );

    final JokeModel joke = JokeModel.fromJson(resp.body);
    return joke;
  }
}
