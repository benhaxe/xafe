import 'package:flutter/material.dart';
import 'package:xafe/app/home/src/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/extensions/platform_extensions.dart';

import 'bottom_app_bar/bottom_app_bar.dart';
import 'bottom_app_bar/src/app_bar_items.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _lastSelected = 'Screen: 0';
  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'Screen: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorGray,
      floatingActionButtonLocation:
          context.isIOS ? null : FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        mini: context.isIOS ? true : false,
        shape: context.isIOS
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              )
            : null,
        tooltip: 'Expenses',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      body: Center(
        child: Text(
          _lastSelected,
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: context.isAndroid
          ? XafeBottomAppBar(
              color: kColorLightBlue,
              selectedColor: kColorDeepBlue,
              onTabSelected: _selectedTab,
              items: [
                XafeBottomAppBarItem(
                  activeIconData: kSvgHomeFilled,
                  iconData: kSvgHomeOutlined,
                  text: 'Home',
                ),
                XafeBottomAppBarItem(
                  activeIconData: kSvgStatsFilled,
                  iconData: kSvgStatsOutlined,
                  text: 'Stats',
                ),
                XafeBottomAppBarItem(
                  activeIconData: kSvgSettingsFilled,
                  iconData: kSvgSettingsOutlined,
                  text: 'Settings',
                ),
                XafeBottomAppBarItem(
                  activeIconData: kSvgInvestFilled,
                  iconData: kSvgInvestOutlined,
                  text: 'Invest',
                ),
              ],
            )
          : XafeBottomNavBar(
              onTabSelected: _selectedTab,
            ),
    );
  }
}
