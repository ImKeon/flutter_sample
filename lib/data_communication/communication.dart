import 'package:flutter/material.dart';

class Communication extends StatefulWidget {
  @override
  _CommunicationState createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {

  TextEditingController _titleController = new TextEditingController();
  TextEditingController _subTitleController = new TextEditingController();
  TextEditingController _contentsController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Keon Data Communication'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _titleController,
            ),
            TextFormField(
              controller: _subTitleController,
            ),
            TextFormField(
              controller: _contentsController,
            ),
          ],
        ),
      ),
    );
  }
}
