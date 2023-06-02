import 'package:get/get.dart';
import 'package:plant_web_app/main.dart';

class HomeController extends GetxController{

  Future<void> onWriteBtnTapped() async {
    await box.write('quote', 'GetX is the best');
  }

  void onReadBtnTapped() {
    print(box.read('quote'));
  }

}