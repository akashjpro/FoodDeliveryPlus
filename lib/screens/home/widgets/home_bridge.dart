import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery/screens/drawer/drawer_screen.dart';

import '../home_screen.dart';

class HomeBridge extends StatefulWidget {
  static String routeName = "/HomeBridge";

  const HomeBridge({Key? key}) : super(key: key);

  @override
  _HomeBridgeState createState() => _HomeBridgeState();
}

class _HomeBridgeState extends State<HomeBridge> {
  final _zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomDrawer(
          style: DrawerStyle.Style1,
          controller: _zoomDrawerController,
          mainScreen: HomeScreen(drawerController: _zoomDrawerController),
          menuScreen: DrawerScreen(),
          borderRadius: 30.0,
          showShadow: true,
          angle: 0.0,
          backgroundColor: Colors.grey[300]!,
          slideWidth: MediaQuery.of(context).size.width * .65,
        )
      // (ZoomDrawer.of(context)!.widget.isRtl ? .45 : 0.65)),
    );
  }
}

