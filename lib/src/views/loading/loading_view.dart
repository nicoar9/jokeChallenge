part of app.views;

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LoadingController(),
        builder: (_) => Hero(
              tag: 'hero',
              child: Scaffold(
                backgroundColor: Colors.purple[300],
                body: Center(
                  child: Text(
                    'Jokefy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ));
  }
}
