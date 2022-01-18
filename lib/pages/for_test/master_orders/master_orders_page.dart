import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'master_orders_page_bloc.dart';

class MasterOrdersPage extends StatelessWidget {
  final AppUser master;
  const MasterOrdersPage({Key? key, required this.master}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MasterOrdersPageBloc(InitState(), master),
        child: Scaffold(
            appBar: AppBar(title: Text('Orders')),
            body: BlocConsumer<MasterOrdersPageBloc, BaseStateV2>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Builder(builder: (context) {
                var bloc = BlocProvider.of<MasterOrdersPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    LoadMasterOrdersPageEvent(context)..invoke();
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case LoadMasterOrdersPageEvent:
                        return _onMasterOrdersPageLoadedState(context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              });
            })));
  }

  Widget _onMasterOrdersPageLoadedState(BuildContext context) {
    var bloc = BlocProvider.of<MasterOrdersPageBloc>(context);
    return Column(children: [
      CustomDropDownButton(
          caption: 'filter',
          selectedItem: DropDownItem(caption: bloc.status),
          entities: [
            DropDownItem(caption: 'all'),
            DropDownItem(caption: 'submitted'),
            DropDownItem(caption: 'accepted'),
            DropDownItem(caption: 'executed')
          ],
          onChanged: (EntityBase? entity) {
            bloc.status = (entity as DropDownItem).getCaption();
            LoadMasterOrdersPageEvent(context)..invoke();
          }),
      Expanded(
          child: EntityListWidget(
              entities: bloc.orders,
              onTap: (EntityBase entity) {
                TapOrderEvent(context, entity as Order)..invoke();
              }))
    ]);
  }
}
