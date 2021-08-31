import 'package:flutter/material.dart';

/// @author jd

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('下一个页面'),
      ),
      body: Center(
        child: Text('first page和player不要该走onLifecycleEvent'),
      ),
    );
  }
}
