import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/getx_controller.dart';

class Counter extends StatefulWidget {
  Counter({
    Key? key,
  }) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increamentCounter();
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Switch(
              value: controller.valu.value,
              onChanged: (e) {
                controller.setSwich(e);
              })),
          Center(
            child: Obx(() => Container(
                  height: 100,
                  width: 100,
                  color: Colors.teal.withOpacity(controller.opacity.value),
                  child: Text(
                    controller.counter.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                )),
          ),
          Obx(() => Slider(
              value: controller.opacity.value,
              onChanged: (e) {
                controller.setOpacity(e);
              }))
        ],
      ),
    );
  }
}
