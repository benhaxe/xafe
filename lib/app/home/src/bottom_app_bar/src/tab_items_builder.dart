import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/scaler/src/extensions.dart';

import 'app_bar_items.dart';

class BuildTabItems extends StatelessWidget {
  final XafeBottomAppBarItem item;
  final int index, selectedIndex;
  final Color color, selectedColor;
  final ValueChanged<int> onPressed;
  const BuildTabItems({
    Key key,
    this.item,
    this.index,
    this.selectedIndex,
    this.color,
    this.selectedColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mColor = selectedIndex == index ? selectedColor : color;
    bool mIsSelected = selectedIndex == index ? true : false;

    return Expanded(
      child: Container(
        margin: context.insetsOnly(
          top: 8,
          bottom: 8,
        ),
        child: Material(
          type: MaterialType.transparency,
          child: GestureDetector(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  mIsSelected ? item.activeIconData : item.iconData,
                  color: mColor,
                  height: 24,
                  width: 24,
                  fit: BoxFit.fitHeight,
                ),
                Text(
                  item.text,
                  style: textStyleRegular(context).copyWith(color: mColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
