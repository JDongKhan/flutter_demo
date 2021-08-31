import 'package:flutter/material.dart';
import 'package:lifecycle/lifecycle.dart';

/// @author jd

class TabbarViewFirstPage extends StatefulWidget {
  @override
  _TabbarViewFirstPageState createState() => _TabbarViewFirstPageState();
}

class _TabbarViewFirstPageState extends State<TabbarViewFirstPage>
    with AutomaticKeepAliveClientMixin, LifecycleAware, LifecycleMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }

  bool _visible = true;

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    if (event == LifecycleEvent.push) {
      debugPrint('player push ');
    } else if (event == LifecycleEvent.visible) {
      _visible = true;
      debugPrint('player visible ');
    } else if (event == LifecycleEvent.invisible) {
      _visible = false;
      debugPrint('player invisible ');
    } else if (event == LifecycleEvent.active) {
      debugPrint('player active ');
    } else if (event == LifecycleEvent.inactive) {
      debugPrint('player inactive ');
    } else if (event == LifecycleEvent.pop) {
      debugPrint('player pop ');
    }
  }

  @override
  bool get wantKeepAlive => true;
}
