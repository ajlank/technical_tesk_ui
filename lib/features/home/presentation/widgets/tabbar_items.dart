import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/features/home/data/constants/tab_data.dart';
import 'package:statemanagement/features/home/presentation/getx/home_controller.dart';
import 'package:statemanagement/features/home/presentation/widgets/tab_item.dart';


class TabbarItems extends StatelessWidget {
  const TabbarItems({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller=Get.find<HomeController>();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(tabList.length, (i) {
          String name=tabList[i].name;
          int id=tabList[i].id;
          return TabItem(name: name, id: id);
        }),
      ),
    );
  }
}
