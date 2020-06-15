import 'package:flutter/widgets.dart';

typedef ResponsiveBuilder = Widget Function(
  BuildContext context,
  Size size,
);

class ResponsiveSafeArea extends StatelessWidget {
  final ResponsiveBuilder responsiveBuilder;
  final double padding;

  const ResponsiveSafeArea({
    Key key,
    this.padding = 8.0,
    @required ResponsiveBuilder builder,
  })  : responsiveBuilder = builder,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return responsiveBuilder(
              context,
              constraints.biggest,
            );
          },
        ),
      ),
    );
  }
}

class ResponsiveNoSafeArea extends StatelessWidget {
  final ResponsiveBuilder responsiveBuilder;
  final double padding;

  const ResponsiveNoSafeArea({
    Key key,
    this.padding = 8.0,
    @required ResponsiveBuilder builder,
  })  : responsiveBuilder = builder,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return responsiveBuilder(
            context,
            constraints.biggest,
          );
        },
      ),
    );
  }
}
