import 'package:beauty_link/bloc/base_bloc.dart';
import 'package:beauty_link/bloc/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePagePopup extends StatelessWidget {
  List<String> _settingsBtnChoices = <String>["profile", "signOut", "users", "test", "test3"];

  @override
  Widget build(BuildContext context) {
    final BaseBloc _bloc = BlocProvider.of<BaseBloc>(context);
    return PopupMenuButton<String>(onSelected: (String choice) {
      _bloc.add(HomePopupBtnClickEvent(choice));
    }, itemBuilder: (BuildContext context) {
      return _settingsBtnChoices.map((String choice) {
        return PopupMenuItem<String>(value: choice, child: Text(choice));
      }).toList();
    });
  }
}
