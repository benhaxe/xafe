import 'package:flutter/material.dart';
import 'package:xafe/app/budget/presentation/widgets/view_budget_card_header.dart';
import 'package:xafe/src/components/buttons/buttons.dart';
import 'package:xafe/src/components/form_fields/src/budget_amount_form_field.dart';
import 'package:xafe/src/res/values/values.dart';
import 'package:xafe/src/utils/navigation/src/navigation.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

class XafeCalendarScreen extends StatelessWidget {
  const XafeCalendarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: context.insetsSymetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    BudgetCardHeader(
                      month: 'September',
                      year: '2019',
                      onHeaderTapped: () => popView(context),
                    ),
                    YMargin(48),
                    Placeholder()
                  ],
                ),
              ),
              YMargin(32),
              XafeButton(
                'Select',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
