import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/pages/counter/logic.dart';

import 'logic.dart';

class SecondScreenPage extends StatelessWidget {
  final logic = Get.put(SecondScreenLogic());
  final state = Get
      .find<SecondScreenLogic>()
      .state;
  final logic2 = Get.put(CounterLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Obx(() {
        return Text(" from first page logic ${logic2.counter.value}");
      })),
    );
  }
}
