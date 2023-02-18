import 'package:flutter/material.dart';
import 'package:getx/routes/routeName.dart';
import 'package:getx/view/favourite_app.dart';
import 'package:getx/view/home_screen.dart';
import 'package:getx/view/image_picker.dart';
import 'package:getx/view/next.dart';
import 'package:getx/view/three.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteName.next:
        return MaterialPageRoute(
          builder: (context) => Next(title: settings.arguments as Map),
        );
      case RouteName.three:
        return MaterialPageRoute(
          builder: (context) => Counter(),
        );
      case RouteName.favourite:
        return MaterialPageRoute(
          builder: (context) => const Favourite(),
        );
      case RouteName.image:
        return MaterialPageRoute(
          builder: (context) => const ImagePicker(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text('No Route Defined')),
          ),
        );
    }
  }
}
