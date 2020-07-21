import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

class ExpensesCategoryItem extends StatelessWidget {
  final bool _isSelected;
  final String _categoryText;
  final String _categoryIcon;
  const ExpensesCategoryItem({
    Key key,
    bool isSelected,
    String categoryText,
    String categoryIcon,
  })  : _isSelected = isSelected ?? false,
        _categoryText = categoryText ?? '',
        _categoryIcon = categoryIcon ?? kSvgCalendar,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.insetsSymetric(vertical: 4),
      decoration: BoxDecoration(
        color: kColorWhite,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: _isSelected ? kColorDeepBlue : kColorPurple,
          style: BorderStyle.solid,
          width: _isSelected ? 2 : .5,
        ),
        boxShadow: _isSelected
            ? <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFEDF0F7),
                  blurRadius: 1.0,
                  offset: Offset(0.0, 6.0),
                )
              ]
            : null,
      ),
      child: Padding(
        padding: context.insetsSymetric(
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              '$_categoryIcon',
              height: 24,
              width: 24,
              color: _isSelected ? kColorDeepBlue : kColorPurple,
            ),
            YMargin(kDimen8),
            Text(
              '$_categoryText',
              maxLines: 1,
              softWrap: true,
              style: textStyleExtraBold(
                context,
                fontColor: _isSelected ? kColorDeepBlue : kColorPurple,
                fontSize: kDimen12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
