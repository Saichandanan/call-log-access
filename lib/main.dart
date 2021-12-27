import 'package:flutter/material.dart';

import 'modal/call_log_entry.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("call log"),
      ),
      body:  Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
          getCallLogs();
        },
          child: const Text("press"),
        ),
      )
    );


  }

   //functions for accessing call logs
  Future<Iterable<CallLogEntry>>getCallLogs()async{
    Iterable<CallLogEntry>entries=await CallLog.get();
    for(var items in entries){
      print(items.name);
    }
    return entries;
  }
  
}
