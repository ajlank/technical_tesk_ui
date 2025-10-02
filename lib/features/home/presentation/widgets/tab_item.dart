import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/features/home/presentation/getx/home_controller.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.name, required this.id});
  final String name;
  final int id;
  @override
  Widget build(BuildContext context) {
   final HomeController controller=Get.find<HomeController>();
    return GestureDetector(
      onTap: () {
        controller.setId(id);
      },
      child: Obx(() {
        return Container(
        margin: EdgeInsets.only(right: 10),
        height: 34,
        width: 77,
        decoration: BoxDecoration(
          color: (controller.getId==id)?const Color.fromARGB(255, 104, 187, 255):Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(name, style: TextStyle(color: (controller.getId==id)?Colors.white:Colors.black, fontSize: 12)),
        ),
      );
      },)
    );
  }
}
