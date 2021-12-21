import 'package:casual_card/services/CardArgs.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  static const routeName = '/cardargs';

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    final CardArgs cardArgs =
        ModalRoute.of(context).settings.arguments as CardArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text(cardArgs.name),
      ),
      body: Stack(
        children: [
          Container(
              // color: Colors.black,
              ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      // color: Colors.black54,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(cardArgs.red),
                            Container(
                              height: 250,
                              child: Image.asset('fire.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.black54,
                      child: Center(
                        child: Column(
                          children: [
                            Text(cardArgs.blue),
                            Container(
                              height: 250,
                              child: Image.asset('fire.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
