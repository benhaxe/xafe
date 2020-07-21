import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xafe/app/expenses/presentation/constants/add_expenses_const.dart';
import 'package:xafe/app/expenses/presentation/widgets/expenses_app_bar.dart';
import 'package:xafe/app/expenses/presentation/widgets/items/category_item.dart';
import 'package:xafe/app/expenses/presentation/widgets/section_heading_text.dart';
import 'package:xafe/app/expenses/presentation/widgets/xafe_switch.dart';
import 'package:xafe/src/components/buttons/buttons.dart';
import 'package:xafe/src/components/form_fields/form_fields.dart';
import 'package:xafe/src/components/form_fields/src/multi_line_form_field.dart';
import 'package:xafe/src/res/res.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';
import 'package:xafe/src/utils/extensions/platform_extensions.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorGray,
      body: Container(
        child: Column(
          children: [
            ///[App Bar].
            ExpensesAppBar(),

            Expanded(
              child: SingleChildScrollView(
                padding: context.insetsOnly(bottom: 40),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ///[Text field] and [Calendar].
                      Container(
                        color: kColorWhite,
                        padding: context.insetsSymetric(
                            horizontal: 24.0, vertical: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// [Amount].
                            SectonHeadingText('Amount'),
                            XafeAmountFormField(
                              hintText: 'Enter',
                            ),
                            YMargin(28),

                            /// [Calendar].
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Tuesday, 25 September',
                                    style: textStyleExtraBold(
                                      context,
                                      fontSize: kDimen16,
                                      fontColor: kColorDeepBlue,
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  kSvgCalendar,
                                  height: 20,
                                  width: 20,
                                  color: kColorPurple,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      ///Others.
                      Container(
                        padding: context.insetsSymetric(horizontal: 28.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///[Category section].
                            Container(
                              padding: context.insetsSymetric(
                                vertical: 32,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SectonHeadingText('Select Category'),
                                  GridView.count(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisSpacing: 24,
                                    mainAxisSpacing: 16,
                                    crossAxisCount: 3,
                                    children: List.generate(
                                      expensesCategoryTexts.length,
                                      (index) => ExpensesCategoryItem(
                                        isSelected: false,
                                        categoryText:
                                            expensesCategoryTexts[index],
                                        categoryIcon:
                                            expensesCategoryIcons[index],
                                      ),
                                    ),
                                  ),
                                  YMargin(context.isAndroid ? 32.0 : 0.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: kColorWhite,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: kColorPurple,
                                        style: BorderStyle.solid,
                                        width: 2,
                                      ),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Color(0xFFEDF0F7),
                                          blurRadius: 1.0,
                                          offset: Offset(0.0, 6.0),
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: context.insetsSymetric(
                                        horizontal: 12.0,
                                        vertical: 8.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Add This Bill Each Month',
                                              style: textStyleBold(
                                                context,
                                                fontColor: kColorBlack,
                                              ),
                                            ),
                                          ),
                                          XafeSwitch(
                                            onChanged: (value) {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            ///[Add Photo section].
                            Container(
                              padding: context.insetsSymetric(
                                vertical: 32,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SectonHeadingText('Add Photo'),
                                  YMargin(16),
                                  FloatingActionButton(
                                    onPressed: () {},
                                    elevation: 1.0,
                                    backgroundColor: kColorWhite,
                                    child: Icon(
                                      Icons.add,
                                      color: kColorDeepBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            ///[More details section].
                            Container(
                              padding: context.insetsSymetric(
                                vertical: 32,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SectonHeadingText('More Details'),
                                  YMargin(16),
                                  SizedBox(
                                    height: 200,
                                    child: XafeMultiLineFormField(),
                                  )
                                ],
                              ),
                            ),

                            ///.[Button]
                            YMargin(kDimen24),
                            XafeButton(
                              'Add',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),

                      ///[Expenses category section].
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
