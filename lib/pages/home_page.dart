//import 'dart:html';

import 'package:beauty_link/bloc/events.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beauty_link/bloc/base_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaseBloc>(
        create: (context) => BaseBloc(StateInit()),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Users List'),
              centerTitle: true,
            ),
            body: BlocBuilder<BaseBloc, StateBase>(builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      getTextByState(state),
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              );
            }),
            floatingActionButton: ActionButton()));
  }

  String getTextByState(StateBase state) {
    switch (state.runtimeType) {
      case StateInit:
        return "Init";
      case StateLoading:
        return "Loading";
      case StateLoaded:
        return "Loaded";
    }
    return "No state";
  }
}

class ActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BaseBloc _bloc = BlocProvider.of<BaseBloc>(context);
    return FloatingActionButton(
      onPressed: () => _bloc.add(CounterEvent()),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
