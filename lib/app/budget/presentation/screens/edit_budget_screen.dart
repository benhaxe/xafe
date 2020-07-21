import 'package:flutter/material.dart';
import 'package:xafe/app/budget/presentation/widgets/view_budget_card_header.dart';
import 'package:xafe/src/components/buttons/buttons.dart';
import 'package:xafe/src/components/form_fields/form_fields.dart';
import 'package:xafe/src/components/form_fields/src/budget_amount_form_field.dart';
import 'package:xafe/src/components/modals/xafe_card.dart';
import 'package:xafe/src/res/values/values.dart';
import 'package:xafe/src/utils/navigation/src/navigation.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

class EditBudgetScreen extends StatelessWidget {
  const EditBudgetScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: context.insetsSymetric(horizontal: 8.0, vertical: 16.0),
          child: Column(
            children: [
              Expanded(
                child: XafeCard(
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: BudgetCardHeader(
                          month: 'September',
                          year: '2019',
                          onHeaderTapped: () => popView(context),
                        ),
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Budget',
                              style: textStyleBold(context, fontSize: kDimen20),
                            ),
                            YMargin(32),
                            XafeBudgetAmountFormField(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              YMargin(32),
              XafeButton(
                'Save',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
