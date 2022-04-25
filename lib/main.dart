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
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Cuzradio'),
        centerTitle: true,
      ),
      body:  WebView(
        initialUrl: 'https://www.cuzradio.com/App_playlist/playlist/CodemiTechAuthKit/login.html',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
       this.controller = controller;
        },
    
     ),
    );
  }
}
      