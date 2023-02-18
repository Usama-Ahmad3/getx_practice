import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/favourite_controller.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
      ),
      body: ListView.builder(
        itemCount: favouriteController.fruit.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (favouriteController.favourite
                    .contains(favouriteController.fruit[index].toString())) {
                  favouriteController
                      .remove(favouriteController.fruit[index].toString());
                } else {
                  favouriteController
                      .add(favouriteController.fruit[index].toString());
                }
              },
              title: Text(favouriteController.fruit[index].toString()),
              trailing: Obx(() => Icon(Icons.favorite_outline,
                  color: favouriteController.favourite
                          .contains(favouriteController.fruit[index].toString())
                      ? Colors.red
                      : Colors.white)),
            ),
          );
        },
      ),
    );
  }
}
