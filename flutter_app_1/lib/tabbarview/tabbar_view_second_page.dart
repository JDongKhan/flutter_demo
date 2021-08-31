import 'package:flutter/material.dart';

/// @author jd

class TabbarViewSecondPage extends StatefulWidget {
  @override
  _TabbarViewSecondPageState createState() => _TabbarViewSecondPageState();
}

class _TabbarViewSecondPageState extends State<TabbarViewSecondPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
