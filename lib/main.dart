import 'package:fake1_api/controller.dart';
import 'package:fake1_api/view_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      home: MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => controller(),
      )
    ],
    child: one(),
  )));
}

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    controller c = Provider.of(context);
    c.get();

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: c.l.length,
        itemBuilder: (context, index) {
          first f = first.fromJson(c.l[index]);
          return Card(
              child: ListTile(
            title: Text(
              "${f.title}",
              style: TextStyle(color: Colors.black),
            ),
          ));
        },
      ),
    );
  }
}
