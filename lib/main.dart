import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Jameel Noori Nastaleeq',
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HtmlEditorController controller = HtmlEditorController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xff2d3447),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 100),
              child: HtmlEditor(
                controller: controller, //required
                htmlEditorOptions: HtmlEditorOptions(
                  hint: "Your text here...",
                  //initalText: "text content initial, if any",
                ),
                otherOptions: OtherOptions(
                  height: 400,
                ),
              )),
        ),
      ),
    );
  }
}
