import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:statemanagement/features/home/presentation/getx/home_controller.dart';
import 'package:statemanagement/features/home/presentation/widgets/item_widget.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller=Get.find<HomeController>();
    return Container(
      height: double.infinity,
      color: Colors.blue,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ItemWidget(icon: 'lib/assets/home.png', title: 'Home', 
             bgColor:Colors.white, onTap: () {
              controller.setDrawerItemId(1);
            }, id: 1,),
            ItemWidget(icon: 'lib/assets/profile.png', title: 'Profile', bgColor:Colors.white, onTap: () {
               controller.setDrawerItemId(2);
            }, id: 2,),
            ItemWidget(icon: 'lib/assets/location.png', title: 'Nearby', bgColor: Colors.white, onTap: () {
               controller.setDrawerItemId(3);
            }, id: 3,),
            const SizedBox(height: 15),
            const Divider(color: Colors.white, thickness: 0.8, endIndent: 210),
            const SizedBox(height: 15),
            ItemWidget(icon: 'lib/assets/book_mark.png', title: 'Bookmark',
             bgColor: Colors.white, onTap: () {
               controller.setDrawerItemId(4);
            }, id: 4,),
            ItemWidget(icon: 'lib/assets/notification.png', title: 'Notification', 
            bgColor: Colors.white, onTap: () {
              controller.setDrawerItemId(5);
            }, id: 5,),
            ItemWidget(icon: 'lib/assets/msg.png', title: 'Message',
             bgColor: Colors.white, onTap: () {
               controller.setDrawerItemId(6);
            }, id: 6,),
            const SizedBox(height: 15),
            const Divider(color: Colors.white, thickness: 0.8, endIndent:210),
            const SizedBox(height: 15),
            ItemWidget(icon: 'lib/assets/settings.png', title: 'Setting', 
            bgColor: Colors.white, onTap: () {
               controller.setDrawerItemId(7);
            }, id: 7,),
            ItemWidget(icon: 'lib/assets/help.png', title: 'Help', 
            bgColor: Colors.white, onTap: () {
               controller.setDrawerItemId(8);
            }, id: 8,),
            ItemWidget(icon: 'lib/assets/logout.png', title: 'Logout', bgColor:
             Colors.white, onTap: () {
               controller.setDrawerItemId(9);
            }, id: 9,),
          ],
        ),
      ),
    );
  }
}
