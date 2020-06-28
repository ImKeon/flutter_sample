import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keontestapp/counter/bloc/bloc.dart';
import 'package:keontestapp/data_communication/communication.dart';

class Counter extends StatefulWidget {
  @override
  _Counter createState() => _Counter();
}

class _Counter extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'keon test app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyCounterPage(),
    );
  }
}

class MyCounterPage extends StatefulWidget {
  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  CounterBloc _counterBloc;

  @override
  void initState() {
    super.initState();
    _counterBloc = CounterBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _counterBloc,
        builder: (BuildContext context, CounterState state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Keon Test App"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${state.count}',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            //store btn
            floatingActionButton: Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: () {
                        _counterBloc.add(DecrementBtnPressed());
                      },
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        _counterBloc.add(IncrementBtnPressed());
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
