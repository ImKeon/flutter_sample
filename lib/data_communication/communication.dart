import 'package:flutter/material.dart';
import 'package:keontestapp/data_communication/bloc/communication_bloc.dart';
import 'package:keontestapp/model/communication.dart';

class CommunicationPage extends StatefulWidget {
  @override
  _CommunicationPageState createState() => _CommunicationPageState();
}

class _CommunicationPageState extends State<CommunicationPage> {

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
            sendContainer(),
            getContainer(),
          ],
        ),
      ),
    );
  }

  Column getContainer() {
    return Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 50,
                  child: Text(
                      '0'
                  )
              ),
              Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 50,
                  child: Text(
                      '0'
                  )
              ),
              Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 50,
                  child: Text(
                      '0'
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: null,
                  child: Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    child: Text('Load'),
                  ),
                ),
              ),
            ],
          );
  }

  Column sendContainer() {
    return Column(
            children: <Widget>[
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  controller: _titleController,
                ),
              ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  controller: _subTitleController,
                ),
              ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  controller: _contentsController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: null,
                  child: Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    child: Text('Send'),
                  ),
                ),
              ),
            ],
          );
  }

  _handleSubmit() {

    Communication communication = new Communication(
        _titleController.text == null ? '' : _titleController.text,
        _subTitleController.text == null ? '' : _subTitleController.text,
        _contentsController.text == null ? '' : _contentsController.text,
    );

//    CommunicationBloc.add(CommentUpload(
//        couchingComment: couchingComment
//    ));

    _titleController.text = '';
    _subTitleController.text = '';
    _contentsController.text = '';  // 저장 후 댓글란에 텍스트 다시 지워줌
  }

}
