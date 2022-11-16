import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/pages/second_screen/view.dart';

import 'logic.dart';

class CounterPage extends StatelessWidget {
  final logic = Get.put(CounterLogic());
  final state = Get.find<CounterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
          child:

              /// every obs functions must be wrapped with .obx for the reactive change to be implemented
              Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Text("no ${logic.counter.value}");
          }),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                /// get method of navigation
                Get.to(SecondScreenPage());
                /// flutter raw navigator
                // Navigator.push(context, MaterialPageRoute(builder: (context) =>SecondScreenPage() ,));

              },
              child: Text("Navigate To"))
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            logic.increment();
          },
          child: Icon(Icons.add)),
    );
  }
}
