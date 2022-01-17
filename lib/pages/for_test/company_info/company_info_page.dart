import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'company_info_page_bloc.dart';

class CompanyInfoPage extends StatelessWidget {
  final Company company;
  const CompanyInfoPage({Key? key, required this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CompanyInfoPageBloc(InitState(), company),
        child: Scaffold(
            appBar: AppBar(title: Text('${company.name}')),
            body: BlocConsumer<CompanyInfoPageBloc, BaseStateV2>(listener: (context, state) {
              // TODO: implement listener
            }, builder: (context, state) {
              var bloc = BlocProvider.of<CompanyInfoPageBloc>(context);
              switch (state.runtimeType) {
                case InitState:
                  bloc.add(CompanyInfoPageLoadEvent(bloc));
                  return LoadingWidget();
                case BeginEventState:
                  return LoadingWidget();
                case EndEventState:
                  switch ((state as EndEventState).event.runtimeType) {
                    case CompanyInfoPageLoadEvent:
                      return _onLoadPageEvent(bloc, context);
                    default:
                      return Text('empty state');
                  }
                default:
                  return Text('empty state');
              }
            })));
  }

  Widget _onLoadPageEvent(CompanyInfoPageBloc bloc, BuildContext context) {
    return Center(
        child: Column(children: [
      Text("Name: ${bloc.company.name ?? 'noName'}"),
      bloc.company.masters.length > 0
          ? Expanded(child: EntityListWidget(entities: bloc.company.masters, onTap: (context, entityBase) {}))
          : Text("No masters"),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1),
                    color: Colors.grey[300],
                    //shape: BoxShape.circle,
                  ),
                  child: CustomDropDownFieldMulti(
                      items: bloc.canJoinUsers.map((e) => DropDownFieldItem(caption: e.name, entity: e)).toList(),
                      hint: 'select masters',
                      onChanged: bloc.onSelectMasterChanged))),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 1),
              color: Colors.grey[300],
              shape: BoxShape.rectangle,
            ),
            child: IconButton(
                iconSize: 56,
                icon: Icon(Icons.add),
                onPressed: () {
                  bloc.add(AddMastersFromList(context));
                }),
          )
        ]),
      ),
      CustomButton(text: "Add master by QR", clickEvent: AddMasterByQREvent(context), bloc: bloc)
    ]));
  }
}
