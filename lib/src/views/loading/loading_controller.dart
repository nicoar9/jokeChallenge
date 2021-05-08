part of app.views;

class LoadingController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(
        HomePage(),
      );
    });
  }
}
