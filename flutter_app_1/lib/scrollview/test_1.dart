import 'package:flutter/material.dart';

/// @author jd

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('ScrollView'),
      ),
      body: Stack(
        children: [
          _buildMapWidget(),
          _buildScrollWidget(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  ///map, but onPanUpdate can't print log
  Widget _buildMapWidget() {
    return GestureDetector(
      onPanUpdate: (detail) {
        print('detail:$detail');
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment(0, -0.3),
        child: Text(
          'Map',
          style: TextStyle(color: Colors.blue),
        ),
        color: Colors.white,
      ),
    );
  }

  ///scroll widget
  Widget _buildScrollWidget() {
    return CustomScrollView(
      slivers: [
        _buildTopMenu(),

        //transparent
        SliverToBoxAdapter(
          child: SizedBox(
            height: 400,
          ),
        ),
        _buildBottomMenu(0),
        _buildBottomMenu(1),
        _buildBottomMenu(2),
        _buildBottomMenu(3),
        _buildBottomMenu(4),
        _buildBottomMenu(5),
        _buildBottomMenu(6),
      ],
    );
  }

  ///top menu
  Widget _buildTopMenu() {
    return SliverToBoxAdapter(
      child: Container(
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.my_location),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }

  ///bottom menu
  Widget _buildBottomMenu(int index) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        color: Colors.orange,
        child: Center(child: Text('Menu-$index')),
      ),
    );
  }
}
