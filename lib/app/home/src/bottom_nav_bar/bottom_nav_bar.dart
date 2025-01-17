import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xafe/src/res/res.dart';

class XafeBottomNavBar extends StatefulWidget {
  final ValueChanged<int> onTabSelected;
  const XafeBottomNavBar({
    Key key,
    this.onTabSelected,
  }) : super(key: key);

  @override
  _XafeBottomNavBarState createState() => _XafeBottomNavBarState();
}

class _XafeBottomNavBarState extends State<XafeBottomNavBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kColorWhite,
      onTap: _updateIndex,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      unselectedLabelStyle:
          textStyleRegular(context).copyWith(color: kColorLightBlue),
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            kSvgHomeFilled,
            color: kColorDeepBlue,
          ),
          icon: SvgPicture.asset(
            kSvgHomeOutlined,
            color: kColorLightBlue,
          ),
          title: Text(
            'Home',
            style: textStyleRegular(context).copyWith(color: kColorDeepBlue),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            kSvgStatsFilled,
            height: 24,
            color: kColorDeepBlue,
          ),
          icon: SvgPicture.asset(
            kSvgStatsOutlined,
            height: 24,
            color: kColorLightBlue,
          ),
          title: Text(
            'Stats',
            style: textStyleRegular(context).copyWith(color: kColorDeepBlue),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            kSvgSettingsFilled,
            color: kColorDeepBlue,
          ),
          icon: SvgPicture.asset(
            kSvgSettingsOutlined,
            color: kColorLightBlue,
          ),
          title: Text(
            'Settings',
            style: textStyleRegular(context).copyWith(color: kColorDeepBlue),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            kSvgInvestFilled,
            color: kColorDeepBlue,
          ),
          icon: SvgPicture.asset(
            kSvgInvestOutlined,
            color: kColorLightBlue,
          ),
          title: Text(
            'Invest',
            style: textStyleRegular(context).copyWith(color: kColorDeepBlue),
          ),
        ),
      ],
    );
  }
}
