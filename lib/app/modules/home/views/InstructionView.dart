import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class InstructionView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset("assets/diceBg.png"),
            Text("*** Rules"
                "\n* You can roll two dice and each dice has six faces. "
                "\n* These faces contain 1,2,3,4,5 and 6 spots After the dice have come to rest, the sum of the spots on the two upward faces is calculated. "
                "\n* If the sum is 7 or 11 on the first throw, the player wins. "
                "\n* If the sum is 2.3 or 12 on the first throw, you lose. "
                "\n* If the sum is 4,5,6,8,9 or 10 on the first throw, then that sum becomes the player's \"points\", "
                "\n* To win, you must continue rolling the dice until your dice-sum equal to your points. If dice-sum gets equal to 7 you lose.",
            style: TextStyle(color: Colors.white),
            ),

            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.purple),
              onPressed: (){
                controller.isInstruction.value= false;
              },
              child: Text("Start Gamr"),
            )
          ],
        ),
      ),
    );
  }
}
