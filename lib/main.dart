import 'package:flutter/material.dart';
import 'package:zegocloud_video_calling/home.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  border: Border.all(
                    color: Color(0xFF3d4359),
                    width: 1.5,
                  ),
                ),
                child: TextField(
                  controller: _controller,
                  cursorColor: Color(0xFF3d4359),
                  keyboardType: TextInputType.text,
                  maxLength: 10,
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      //fontWeight: FontWeight.bold,
                      color:
                      Color(0xFF3d4359),
                      fontSize: 17),
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: 'Name',
                      border: InputBorder.none,
                      counterText: ''),
                )),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)),
                border: Border.all(
                  color: Color(0xFF3d4359),
                  width: 1.5,
                ),
              ),
              child: TextField(
                controller: _controller2,
                cursorColor: Color(0xFF3d4359),
                keyboardType: TextInputType.text,
                maxLength: 10,
                style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    //fontWeight: FontWeight.bold,
                    color:
                    Color(0xFF3d4359),
                    fontSize: 17),
                decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: 'UserID',
                    border: InputBorder.none,
                    counterText: ''),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){

                if(_controller.text.isEmpty || _controller2.text.isEmpty){
                  Fluttertoast.showToast(
                      msg: "Invalid credentials, please give correct credentials",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                  return;
                }

                if(_controller.text.trim().isEmpty || _controller2.text.trim().isEmpty){
                  Fluttertoast.showToast(
                      msg: "Invalid credentials, please give correct credentials",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                  return;
                }

                String name = _controller.text;
                String userID = _controller2.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(name: name, userId: userID)),
                );
              },
               child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}

