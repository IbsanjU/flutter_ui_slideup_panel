import 'package:flutter/material.dart';
import 'package:flutter_ui_slideup_panel/panel_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SlidingUpPanel(
        body: Container(
          color: Colors.amber[100],
          constraints: BoxConstraints.expand(),
          child: Center(
            child: Text('This is an example for sliding up panel'),
          ),
        ),
        panelBuilder: (controller) => PanelWidget(controller: controller),
      ),
    );
  }
}
