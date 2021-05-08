import 'dart:math';

class AvatarService {
  final String avatarSource = 'https://avatars.dicebear.com/api/human/:';
  final _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random _rnd = Random();

  Future<String> getRandomAvatar() async {
    final String randomAvatarString = avatarSource +
        String.fromCharCodes(
          Iterable.generate(
            4,
            (_) => _chars.codeUnitAt(
              _rnd.nextInt(_chars.length),
            ),
          ),
        ) +
        '.svg';
    return randomAvatarString;
  }
}
