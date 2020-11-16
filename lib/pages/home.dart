import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    String convertedReactionPercentage = data['reactionPercentage'].toString();

    return Scaffold(
      body:
       Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             Image.asset(
              'assets/banana.png',
              fit:BoxFit.contain,
              width: 250.0,
              height: 250.0,
            ),

             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   Container(
                    child:
                     Text(
                       convertedReactionPercentage+ "%",
                      style:  TextStyle(fontSize:34.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto"
                      ),
                    ),
                    padding: const EdgeInsets.all(20.0),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.green[900],
                        shape: BoxShape.circle,
                    ),
                  ),

                   Text(
                     data['allergyName'].toUpperCase().substring(0, 1) + data['allergyName'].substring(1),
                    style:  TextStyle(
                        fontSize:33.0,
                        color: Colors.green[900],
                        fontWeight: FontWeight.w800,
                        fontFamily: "Roboto"),
                  )
                ]

            ),

             Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.width*0.5,
              child:
               Text(
                 data['infoText'],
                style: TextStyle(
                  fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                ),
              ),

              padding: const EdgeInsets.all(0.0),
              alignment: Alignment.center,
            ),
          ]

      ),

    );
  }
}