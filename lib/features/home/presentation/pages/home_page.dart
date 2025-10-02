import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/features/home/data/constants/property.dart';
import 'package:statemanagement/features/home/data/constants/property_data.dart';
import 'package:statemanagement/features/home/presentation/getx/home_controller.dart';
import 'package:statemanagement/features/home/presentation/widgets/property_item.dart';
import 'package:statemanagement/features/home/presentation/widgets/propery_section.dart';
import 'package:statemanagement/features/home/presentation/widgets/reusable_header.dart';
import 'package:statemanagement/features/home/presentation/widgets/search_pannel.dart';
import 'package:statemanagement/features/home/presentation/widgets/drawer_items.dart';
import 'package:statemanagement/features/home/presentation/widgets/tabbar_items.dart';
import 'package:statemanagement/features/home/presentation/widgets/top.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final HomeController controller = Get.put(HomeController());

    return Obx(() {
      return Scaffold(
        body: Stack(
          children: [
            DrawerItems(),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              transform: Matrix4.translationValues(
                controller.getXoffset,
                controller.getYoffset,
                0,
              )..scale(controller.getScaleFactor),
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx > 10 && !controller.getIsDrawerOpen) {
                    controller.openDrawer();
                  } else if (details.delta.dx < -10 &&
                      controller.getIsDrawerOpen) {
                    controller.closeDrawer();
                  }
                },
                child: AbsorbPointer(
                  absorbing: controller.getIsDrawerOpen,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      controller.getIsDrawerOpen ? 20 : 0,
                    ),
                    child: Scaffold(
                      body: Padding(
                        padding: const EdgeInsets.all(14),
                        child: ListView(
                          children: [
                            Top(),
                            SizedBox(height: 17),
                            SearchPannel(wid: wid),
                            SizedBox(height: 21),
                            TabbarItems(),
                            SizedBox(height: 25),
                            ReusableHeader(
                              leftText: 'Near from you',
                              rightText: 'See more',
                            ),
                            SizedBox(height: 25),
                            ProperySection(wid: wid, properties: properties),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: ReusableHeader(
                                leftText: 'Best for you',
                                rightText: 'See more',
                              ),
                            ),
                            SizedBox(height: 25),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(propertiesN.length, (i) {
                                  var p=propertiesN[i];
                                  return PropertyItem(
                                    imagePath:p.imageUrl,
                                    title: p.title,
                                    price: p.price, 
                                    bedrooms: p.bedRooms, 
                                    bathrooms: p.bathRooms);
                                },)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
