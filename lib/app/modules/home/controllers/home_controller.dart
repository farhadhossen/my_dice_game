import 'dart:math';
import 'dart:math';

import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var isInstruction = true.obs;
  var selectedImage1 = 1.obs;
  var selectedImage2 = 1.obs;
  var sum = "Dice Sum: 0".obs;
  var point = 0.obs;
  var score  = "".obs;
  var initially = 0.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void onRoll(){
    selectedImage1.value = Random().nextInt(6)+1;
    selectedImage2.value = Random().nextInt(6)+1;

    int total = selectedImage1.value + selectedImage2.value;

    if(initially.value==0){

      if(total == 7  || total == 11){
        sum.value = "Dice sum: "+total.toString();
        score.value = "You Win!!!";

      }
      else if (total == 2 || total == 3 || total == 12){
        sum.value = "Dice sum: "+total.toString();
        score.value = "You Loss";

      }else{
        sum.value = "Dice sum: "+total.toString();
        point.value = total;
        score.value = "Keep rolling until you match your point";

      }
      initially.value=1;
    }else{
      if(total==7){
        sum.value = "Dice sum: "+total.toString();
        score.value = "You Loss";

      }else if(total==point.value){
        sum.value = "Dice sum: "+total.toString();
        score.value = "You Win!!!";

      }else{
        sum.value = "Dice sum: "+total.toString();
        score.value = "Keep rolling until you match your point";
      }
    }



  }


  void resetAll(){
   selectedImage1.value = 1;
    selectedImage2.value  = 1;
    sum.value  = "Dice Sum: 0";
    point.value  = 0;
    score.value   = "";
    initially.value  = 0;
  }

}
