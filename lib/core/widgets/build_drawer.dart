import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Drawer(
      width: width*0.75,
      backgroundColor: kScaffoldPrimeColor,
      child:ListView(
        padding: EdgeInsets.zero,
        children: [
         const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle drawer item tap here
              // For example, you can navigate to a specific page
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle drawer item tap here
              // For example, you can navigate to the settings page
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
    ),
    );
  }
}
