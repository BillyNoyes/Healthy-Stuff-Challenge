import 'package:flutter/material.dart';
import 'package:healthy_start/services/api_call.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupApiCall() async {
    ApiCall instance = ApiCall();
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'allergyName': instance.allergyName,
      'reactionPercentage': instance.reactionPercentage,
      'infoText': instance.infoText,
    });
  }

  @override
  void initState() {
    super.initState();
    setupApiCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SpinKitCircle(
              color: Colors.black,
              size: 50.0,
            )
        )
    );
  }
}
