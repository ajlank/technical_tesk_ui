import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt _id = RxInt(1);

  void setId(int i) {
    _id.value = i;
  }

  int get getId => _id.value;

  final RxDouble _xOffset = RxDouble(0); // horizontal translation
  final RxDouble _yOffset = RxDouble(0); // vertical translation
  final RxDouble _scaleFactor = RxDouble(1); // scaling
  final RxBool _isDrawerOpen = RxBool(false);

 double get getXoffset=>_xOffset.value;
 double get getYoffset=>_yOffset.value;
 double get getScaleFactor=>_scaleFactor.value;
 bool get getIsDrawerOpen=>_isDrawerOpen.value;
  
  void openDrawer() {
    _xOffset.value = 300;
    _yOffset.value = 100;
    _scaleFactor.value = 0.8;
    _isDrawerOpen.value = true;
  }

  void closeDrawer() {
    _xOffset.value = 0;
    _yOffset.value = 0;
    _scaleFactor.value = 1;
    _isDrawerOpen.value = false;
  }

  final RxInt _drawerItemId=RxInt(1);
  
  void setDrawerItemId(int f){
    _drawerItemId.value=f;
  }
  int get getDraweItemId=>_drawerItemId.value;
}
