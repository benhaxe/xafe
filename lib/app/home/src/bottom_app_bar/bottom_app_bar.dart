import 'package:flutter/material.dart';
import 'package:xafe/app/home/src/bottom_app_bar/src/app_bar_items.dart';
import 'package:xafe/app/home/src/bottom_app_bar/src/middle_tab_item_builder.dart';

import 'src/tab_items_builder.dart';

class XafeBottomAppBar extends StatefulWidget {
  final List<XafeBottomAppBarItem> items;
  final Color color;
  final Color selectedColor;
  final ValueChanged<int> onTabSelected;

  const XafeBottomAppBar({
    Key key,
    this.items,
    this.color,
    this.selectedColor,
    this.onTabSelected,
  })  : assert(
          items != null,
          onTabSelected != null,
        ),
        super(key: key);

  @override
  _XafeBottomAppBarState createState() => _XafeBottomAppBarState();
}

class _XafeBottomAppBarState extends State<XafeBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _items = List.generate(
      widget.items.length,
      (int index) => BuildTabItems(
        item: widget.items[index],
        index: index,
        selectedIndex: _selectedIndex,
        color: widget.color,
        selectedColor: widget.selectedColor,
        onPressed: _updateIndex,
      ),
    );
    _items.insert(_items.length >> 1, BuildTabMiddleItem());

    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _items,
      ),
      shape: CircularNotchedRectangle(),
      elevation: 4.0,
      notchMargin: 8,
    );
  }
}
