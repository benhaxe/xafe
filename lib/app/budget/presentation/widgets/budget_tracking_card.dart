import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xafe/app/budget/presentation/screens/calendar_screen.dart';
import 'package:xafe/app/budget/presentation/screens/edit_budget_screen.dart';
import 'package:xafe/app/budget/presentation/widgets/view_budget_card_header.dart';
import 'package:xafe/src/components/buttons/src/xafe_bordered_button.dart';
import 'package:xafe/src/components/modals/xafe_card.dart';
import 'package:xafe/src/res/res.dart' show kColorPurple, kSvgCalendar;
import 'package:xafe/src/utils/navigation/navigation.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';

import 'budget_tracker_indicator.dart';

class BudgetTrackingCard extends StatelessWidget {
  const BudgetTrackingCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.insetsOnly(top: 24.0),
      child: XafeCard(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            //Calendar section.
            BudgetCardHeader(
              month: 'September',
              year: '2019',
              onHeaderTapped: () => navigate(context, XafeCalendarScreen()),
              headerIcon: SvgPicture.asset(
                kSvgCalendar,
                height: 24,
                width: 24,
                color: kColorPurple,
              ),
            ),
            YMargin(48),
            //Tracker arc section.
            BudgetTrackerIndicator(),
            //Edit budget button.
            YMargin(48),
            Center(
              child: XafeBorderedButton(
                'Edit Budget',
                onPressed: () => navigate(context, EditBudgetScreen()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
