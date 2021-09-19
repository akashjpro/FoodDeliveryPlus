import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: // Padding(
                  // padding: const EdgeInsets.only(top: 30.0),
                  // child:
                  ListView(
                children: ListTile.divideTiles(
                    color: Colors.white,
                    context: context,
                    tiles: menu.map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: ListTile(
                            minLeadingWidth: 22,
                            leading: e['icon'],
                            title: Text(
                              e['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ))).toList(),
              ),
            ),
            // ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
