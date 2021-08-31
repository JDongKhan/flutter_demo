import 'package:flutter/material.dart';
import 'package:lifecycle/lifecycle.dart';

import 'next_page.dart';

/// @author jd
class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> with LifecycleAware, LifecycleMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => NextPage(
              text: '播放器该暂停播放',
            ),
          ),
        );
      },
      child: Container(
        child: Center(
            child: Text(
          '我是一个播放器，点击我会跳转',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }

  @override
  void onLifecycleEvent(LifecycleEvent event) {
    if (event == LifecycleEvent.push) {
      debugPrint('player push ');
    } else if (event == LifecycleEvent.visible) {
      debugPrint('player visible ');
    } else if (event == LifecycleEvent.invisible) {
      debugPrint('player invisible ');
    } else if (event == LifecycleEvent.active) {
      debugPrint('player active ');
    } else if (event == LifecycleEvent.inactive) {
      debugPrint('player inactive ');
    } else if (event == LifecycleEvent.pop) {
      debugPrint('player pop ');
    }
  }
}
