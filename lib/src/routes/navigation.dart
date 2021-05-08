import 'package:get/get.dart';
import 'package:jokefy/src/views/views.dart';

class Routes {
  static final String loading = '/loading';
  static final String home = '/home';
}

class Pages {
  static final pages = [
    GetPage(
      name: Routes.loading,
      page: () => LoadingView(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
    ),
  ];
}
