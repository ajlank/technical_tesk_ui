import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/features/home/presentation/getx/home_controller.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.icon, required this.title, required this.bgColor, this.onTap, required this.id});
final String icon; 
final String title;
final Color bgColor;
final int id;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final HomeController controller=Get.find<HomeController>();
    return Obx(() {
      return GestureDetector(
    onTap: onTap,
    child: Align(
      alignment: Alignment.centerLeft,
      child: FractionallySizedBox(
        widthFactor: 0.4,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: (controller.getDraweItemId==id)?bgColor:Colors.blue,
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
          ),
          child: Row(
            children: [
              Image.asset(icon, color:(controller.getDraweItemId==id)? Colors.blue:Colors.white, width: 24, height: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(color: (controller.getDraweItemId==id)? Colors.blue:Colors.white, fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
    },);
  }
}