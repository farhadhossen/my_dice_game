import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'InstructionView.dart';
import 'gameplay_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice Game'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body:
      Obx(()=> controller.isInstruction.value ? InstructionView() : GamePlayView())
    );
  }
}
