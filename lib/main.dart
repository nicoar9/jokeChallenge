import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jokefy/src/routes/navigation.dart';
import 'package:jokefy/src/views/views.dart';

void main() => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoadingPage(),
        title: 'Material App',
        initialRoute: Routes.loading,
        getPages: Pages.pages,
      ),
    );
