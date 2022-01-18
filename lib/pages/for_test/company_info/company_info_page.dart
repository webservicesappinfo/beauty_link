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
              switch (state.runtimeType) {
                case InitState:
                  CompanyInfoPageLoadEvent(context).invoke();
                  return LoadingWidget();
                case BeginEventState:
                  return LoadingWidget();
                case EndEventState:
                  switch ((state as EndEventState).event.runtimeType) {
                    case CompanyInfoPageLoadEvent:
                      return _onLoadPageEvent(context);
                    default:
                      return Text('empty state');
                  }
                default:
                  return Text('empty state');
              }
            })));
  }

  Widget _onLoadPageEvent(BuildContext context) {
    var bloc = BlocProvider.of<CompanyInfoPageBloc>(context);
    return Center(
        child: Column(children: [
      Icon(Icons.business_center, size: 40),
      Text("Name: ${bloc.company.name ?? 'noName'}", style: TextStyle(fontSize: 22)),
      CustomButton(text: 'Set location', clickEvent: () => SetLocationBtnClick(context)..invoke()),
      bloc.company.masters.length > 0
          ? Expanded(child: EntityListWidget(entities: bloc.company.masters, onTap: (entityBase) {}))
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
      CustomButton(text: "Add master by QR", clickEvent: () => AddMasterByQREvent(context)..invoke())
    ]));
  }
}
