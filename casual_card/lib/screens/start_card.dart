import 'package:casual_card/services/CardArgs.dart';
import 'package:flutter/material.dart';

class StartCard extends StatefulWidget {
  @override
  _StartCardState createState() => _StartCardState();
}

class _StartCardState extends State<StartCard> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final redController = TextEditingController();
    final blueController = TextEditingController();

    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      nameController.dispose();
      redController.dispose();
      blueController.dispose();
      super.dispose();
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.black),
          Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Center(
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Who you'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.red,
                            child: Center(
                              child: TextField(
                                controller: redController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Red corner'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.blue,
                            child: Center(
                              child: TextField(
                                controller: blueController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    fillColor: Colors.blue[100],
                                    hintText: 'Blue corner'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cardargs',
              arguments: CardArgs(
                  name: nameController.text,
                  red: redController.text,
                  blue: blueController.text));
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
