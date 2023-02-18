import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/routeName.dart';

class Next extends StatefulWidget {
  dynamic title;
  Next({Key? key, required this.title}) : super(key: key);

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title['title'].toString()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English')),
              const SizedBox(width: 20),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'PK'));
                  },
                  child: const Text('Urdu'))
            ],
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Get.toNamed(RouteName.three);
                },
                child: const Text('Three')),
          ),
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back'))
        ],
      ),
    );
  }
}
