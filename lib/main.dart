import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adana Osb',
      home: MyHomePage(),
    );
  }
}
  class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : WebView(
          initialUrl: 'https://meydip.adanaorganize.org.tr/login/login?index=true',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
