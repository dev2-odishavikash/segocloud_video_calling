import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  CallPage({Key? key, required this.callID, required this.name, required this.userId}) : super(key: key);
  final String callID;
  final String name;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 10088625655, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "9a245cf727febb0ff1441e538ab57712b0ce95d8a8134544454rgreg56er4g5", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId,
      userName: name,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
