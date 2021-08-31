import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
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
