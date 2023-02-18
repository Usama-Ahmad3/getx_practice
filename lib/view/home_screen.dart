import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/routeName.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String title = 'Next';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Getx'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.changeTheme(
                              ThemeData(brightness: Brightness.light));
                        },
                        title: const Text('Light Theme'),
                        leading: const Icon(Icons.light_mode),
                      ),
                      ListTile(
                        title: const Text('Dark Theme'),
                        leading: const Icon(Icons.dark_mode),
                        onTap: () {
                          Get.changeTheme(
                              ThemeData(brightness: Brightness.dark));
                        },
                      ),
                    ],
                  ),
                ),
              );
              // Get.defaultDialog(
              //     backgroundColor: Colors.blueGrey,
              //     content: Column(
              //       children: const [Text('how are you')],
              //     ),
              //     title: 'Getx',
              //     middleText: 'rr',
              //     confirm: Column(children: [
              //       TextButton(
              //         onPressed: () {
              //           Get.back();
              //         },
              //         child: const Text('ok'),
              //       ),
              //       TextButton(
              //         onPressed: () {
              //           Get.back();
              //           // Navigator.pop(context);
              //         },
              //         child: const Text('Back'),
              //       ),
              //     ]));
            },
            title: const Text('Getx Practice'),
            subtitle: const Text('hi'),
          ),
          TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, RouteName.next);
                Get.toNamed(RouteName.next,
                    arguments: {'title': title.toString()});
              },
              child: Text(title)),
          TextButton(
              onPressed: () {
                Get.toNamed(RouteName.three);
              },
              child: const Text('Counter Getx')),
          TextButton(
            onPressed: () {
              Get.toNamed(RouteName.favourite);
            },
            child: const Text('Favourite App'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(RouteName.image);
            },
            child: const Text('Image Picker'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ScaffoldMessenger.of(context)
          // .showSnackBar(const SnackBar(content: Text('Pakistan Zindaba')));
          Get.snackbar('Usama Ahmad', 'Pakistan Zindabaad',
              backgroundColor: Colors.greenAccent,
              duration: const Duration(seconds: 3),
              snackPosition: SnackPosition.BOTTOM,
              icon: const Icon(Icons.elderly));
        },
        child: const Icon(Icons.add_alert),
      ),
    );
  }
}
