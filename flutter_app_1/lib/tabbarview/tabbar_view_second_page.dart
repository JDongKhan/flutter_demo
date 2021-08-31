import 'package:flutter/material.dart';

import 'next_page.dart';

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
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => NextPage(
                text: 'first page和player不要该走onLifecycleEvent',
              ),
            ),
          );
        },
        child: Text(
          '下一个页面，注意观察下控制台',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
