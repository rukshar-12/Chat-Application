// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/api/apis.dart';
// import 'package:flutter_application_2/calling/constants.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
// import '../helper/my_date_util.dart';
// import '../main.dart';
// import '../models/chat_user.dart';

// class MyCall extends StatelessWidget {
//   const MyCall({Key? key, required this.callID, required this.user}) : super(key: key);
//   final String callID;
//   final ChatUser user;

//   @override
//   Widget build(BuildContext context) {
//     return ZegoUIKitPrebuiltCall(
//       appID: MyConst.appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
//       appSign: MyConst
//           .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
//       userID: widget.user.email
//       userName: MyLogin.name,
//       callID: callID,
//       // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
//       config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
//         ..onOnlySelfInRoom = () => Navigator.of(context).pop(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_2/calling/constants.dart';
import 'package:flutter_application_2/models/chat_user.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class MyCall extends StatefulWidget {
  const MyCall({Key? key, required this.callID, required this.user})
      : super(key: key);
  final String callID;
  final ChatUser user;

  @override
  State<MyCall> createState() => _MyCallState();
}

class _MyCallState extends State<MyCall> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID: MyConst
            .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: MyConst
            .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: widget.user.id,
        userName: widget.user.name,
        callID: widget.callID,
        // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall());
  }
}
