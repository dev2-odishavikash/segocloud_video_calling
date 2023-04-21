import 'package:flutter/material.dart';
import 'package:zegocloud_video_calling/video_call.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.name, required this.userId}) : super(key: key);
  final String name;
  final String userId;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallPage(callID: '1', name: widget.name, userId: widget.userId,)),
              );
            },
            child: Text("Join Call"),
          ),
        ),
      ),
    );
  }
}
