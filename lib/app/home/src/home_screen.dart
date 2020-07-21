import 'package:flutter/material.dart';
import 'package:xafe/app/budget/presentation/screens/budget_screen.dart';
import 'package:xafe/app/expenses/presentation/screens/add_expense_screen.dart';
import 'package:xafe/app/home/src/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/extensions/platform_extensions.dart';
import 'package:xafe/src/utils/navigation/navigation.dart';

import 'bottom_app_bar/bottom_app_bar.dart';
import 'bottom_app_bar/src/app_bar_items.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _lastSelected = 0;
  final List<Widget> _pages = [
    BudgetScreen(),
    Container(),
    Container(),
    Container(),
  ];
  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorGray,
      floatingActionButtonLocation:
          context.isIOS ? null : FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigate(context, AddExpenseScreen()),
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
      body: SafeArea(
        child: _pages[_lastSelected],
      ),
      bottomNavigationBar: context.isAndroid
          ? XafeBottomAppBar(
              color: kColorPurple,
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
