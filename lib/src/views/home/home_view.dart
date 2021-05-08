part of app.views;

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        centerTitle: true,
        title: Text('Jokefy'),
      ),
      body: Center(
        child: Obx(() {
          return ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ...controller.jokesList.map(
                (JokeModel element) => FadeInLeft(
                  duration: Duration(milliseconds: 500),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: ListTile(
                      tileColor: Colors.white,
                      title: Text(element.joke),
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: SvgPicture.network(
                          element.photoUrl,
                          placeholderBuilder: (_) {
                            return CircularProgressIndicator();
                          },
                          height: 40,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.thumb_up_sharp,
                              color: Colors.purple[300],
                            ),
                            onPressed: () => controller.likeJoke(
                                controller.jokesList.indexOf(element)),
                          ),
                          Text('${element.likes}'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              CustomMaterialButton(
                tag: 'hero',
                function:
                    (controller.delay.value) ? null : controller.fetchJokes,
              ),
              SizedBox(
                height: 24,
              ),
              Visibility(
                visible: controller.visibleText,
                child: Text(
                  "Click the button to generate a random joke",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
