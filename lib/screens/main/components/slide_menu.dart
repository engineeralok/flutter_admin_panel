import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        //SingleChildScrollView enables scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              press: () {},
              title: "Dashbord",
              svgSrc: "assets/icons/menu_dashbord.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Transaction",
              svgSrc: "assets/icons/menu_tran.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Documents",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Setting",
              svgSrc: "assets/icons/menu_setting.svg",
            ),
          ],
        ),
      ),
    );
  }
}
