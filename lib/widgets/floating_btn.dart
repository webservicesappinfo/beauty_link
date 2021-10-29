import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingButton extends StatelessWidget {
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