import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/views/widgets/tob_line_in_nvb.dart';

class BuildBNavBar extends StatelessWidget {
  const BuildBNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int _selectedIndex=2;
    List<IconData> _icons = [
      _selectedIndex==0?Icons.home:Icons.home_outlined,
      _selectedIndex==1?Icons.shopping_cart:Icons.shopping_cart_outlined,
      _selectedIndex==2?Icons.favorite:Icons.favorite_border,
      _selectedIndex==3?Icons.account_circle:Icons.account_circle_outlined,
    ];
    List<String> label = ['Home', 'Cart', 'Favorite', 'My Profile'];
    double itemWidth = MediaQuery.of(context).size.width / _icons.length;
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      child: Stack(
        children: [
          // The actual Bottom Navigation Bar
          SizedBox(
            height: itemWidth/1.3,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              backgroundColor: kBNavBarColor,
              fixedColor: kPrimeButtonColor,
              unselectedItemColor: kPrimeColor,
              items: _icons
                  .asMap()
                  .map((index, icon) {
                return MapEntry(
                  index,
                  BottomNavigationBarItem(
                    icon: Icon(icon),
                    label: label[index],
                  ),
                );
              }).values.toList(),
              currentIndex: _selectedIndex,
              onTap: (index){},
            ),
          ),
          TopLine(itemWidth: itemWidth, selectedIndex: _selectedIndex),
        ],
      ),
    );
  }
}

