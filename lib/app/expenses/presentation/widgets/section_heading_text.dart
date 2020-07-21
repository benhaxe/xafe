import 'package:flutter/widgets.dart';
import 'package:xafe/src/res/res.dart' show kDimen16, textStyleExtraBold;

class SectonHeadingText extends StatelessWidget {
  final String _text;
  const SectonHeadingText(
    String text, {
    Key key,
  })  : _text = text ?? '',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: textStyleExtraBold(
        context,
        fontSize: kDimen16,
      ),
    );
  }
}
