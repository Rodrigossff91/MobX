import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:introducao_mobx/inc_store.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  IncStore _incStore = IncStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incStore.incNumber();
        },
        child: Icon(Icons.plus_one),
      ),
      body: Center(
        child: Observer(builder: (_) {
          return Text(_incStore.number.toString());
        }),
      ),
    );
  }
}
