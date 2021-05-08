part of app.views;

class HomeController extends GetxController {
  // HomeController();
  final JokeService _jokeService = JokeService();
  final AvatarService _avatarService = AvatarService();
  var delay = false.obs;
  var jokesList = <JokeModel>[].obs;
  JokeModel joke;
  String randomAvatar;
  String heroTag = 'hero';
  bool visibleText = true;

  void fetchJokes() async {
    delay.value = true;
    joke = await _jokeService.getRandomJoke();
    if (joke != null) {
      joke.photoUrl = await _avatarService.getRandomAvatar();
      jokesList.add(joke);
      joke.likes = 0;
      visibleText = false;
      Future.delayed(Duration(milliseconds: 600), () async {
        delay.value = false;
      });
    }
  }

  void likeJoke(index) {
    jokesList[index].likes++;
    jokesList.sort((a, b) => b.likes.compareTo(a.likes));
  }
}
