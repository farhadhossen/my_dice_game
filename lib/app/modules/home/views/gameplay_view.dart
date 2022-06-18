import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class GamePlayView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:
      Obx(()=>Container(
        child: Column(
          children: [
            Row(
              children: [

                Expanded(child: Padding(padding: EdgeInsets.all(2),child: Image.asset("assets/dice"+controller.selectedImage1.value.toString()+".png"),)),
                Expanded(child: Padding(padding: EdgeInsets.all(2),child: Image.asset("assets/dice"+controller.selectedImage2.value.toString()+".png"))
                  ,),
              ],
            ),

            Spacer(),
            ElevatedButton(
                onPressed: (){
                  controller.onRoll();
                },
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                child: Text("Roll",style: TextStyle(color: Colors.white),
                ),
            ),

            Spacer(),
            Text(""+controller.sum.value),
            Spacer(),
            Text("Your Point: "+controller.point.value.toString()),
            Spacer(),
            Text(""+controller.score.value.toString()),
            Spacer(),
            controller.score.value == "You Loss" || controller.score.value == "You Win!!!"?
                ElevatedButton(onPressed: (){
                  controller.isInstruction.value=true;
                  controller.resetAll();}, child: Text("Play Again"))
                :Container(),
            Spacer(),


          ],
        ),
      ))
    );
  }
}
