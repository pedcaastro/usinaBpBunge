import 'package:bpbunge/models/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bpbunge/models/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text('bp',style: TextStyle(color: Colors.blue)),
            Text('bunge',style: TextStyle(color: Colors.green),),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 2),
              child: Text('bioenergia',style: TextStyle(color: Colors.grey[500],fontSize:16),),
            )
          ],
        ),
        
      ),

      body: PainelController(),
    );
  }
}