import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = dotenv.env['APP_NAME'] ?? "Default App";

    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(title: Text(appName)),
        body: Center(child: Text("Hello Flutter DevOps!")),
      ),
    );
  }
}
