import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/global.dart';
import 'package:beauty_link/pages/for_test/entities_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaseBloc>(
        create: (context) => BaseBloc(BaseInitState()),
        child: Scaffold(
            appBar: AppBar(title: Text('list')),
            body: BlocConsumer<BaseBloc, BaseState>(listener: (context, state) {
              // TODO: implement listener
            }, builder: (context, state) {
              return Column(children: [
                Center(
                    child: ElevatedButton(
                        onPressed: () => _usersBtnOnPressed(context),
                        child: Text('Users'))),
                Center(
                    child: ElevatedButton(
                        onPressed: () => _skillsBtnOnPressed(context),
                        child: Text('Skills'))),
              ]);
            })));
  }

  void _usersBtnOnPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            EntitiesPage(entityType: EntityType.user, params: Map()),
      ),
    );
  }

  void _skillsBtnOnPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            EntitiesPage(entityType: EntityType.skill, params: Map()),
      ),
    );
  }
}
