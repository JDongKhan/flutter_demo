import 'package:flutter/material.dart';
import 'package:lifecycle/lifecycle.dart';

import 'player.dart';

/// @author jd

///播放顶层widget，设计页面框架
class TabbarViewFirstPage extends StatefulWidget {
  @override
  _TabbarViewFirstPageState createState() => _TabbarViewFirstPageState();
}

class _TabbarViewFirstPageState extends State<TabbarViewFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: LiveWidget(),
    );
  }

  bool _visible = true;

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    if (event == LifecycleEvent.push) {
      debugPrint('first page push ');
    } else if (event == LifecycleEvent.visible) {
      debugPrint('first page visible ');
    } else if (event == LifecycleEvent.invisible) {
      debugPrint('first page invisible ');
    } else if (event == LifecycleEvent.active) {
      debugPrint('first page active ');
    } else if (event == LifecycleEvent.inactive) {
      debugPrint('first page inactive ');
    } else if (event == LifecycleEvent.pop) {
      debugPrint('first page pop ');
    }
  }
}
