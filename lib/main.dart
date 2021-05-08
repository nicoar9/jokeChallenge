import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jokefy/src/routes/navigation.dart';

void main() => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jokefy',
        initialRoute: Routes.loading,
        getPages: Pages.pages,
        theme: ThemeData(accentColor: Colors.purple[300]),
      ),
    );
