import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'client_orders_page_bloc.dart';

class ClientOrdersPage extends StatelessWidget {
  final AppUser client;
  const ClientOrdersPage({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ClientOrdersPageBloc(InitState(), client),
        child: Scaffold(
            appBar: AppBar(title: Text('Orders')),
            body: BlocConsumer<ClientOrdersPageBloc, BaseStateV2>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Builder(builder: (context) {
                var bloc = BlocProvider.of<ClientOrdersPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(LoadMasterOrdersPageEvent(bloc));
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
    var bloc = BlocProvider.of<ClientOrdersPageBloc>(context);
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
          onChanged: bloc.onFilterChanged),
      Expanded(child: EntityListWidget(entities: bloc.orders, onTap: _onTap))
      ]);
  }

  dynamic _onTap(BuildContext context, EntityBase entity) {
    var order = entity as Order;
    var bloc = BlocProvider.of<ClientOrdersPageBloc>(context);
    bloc.add(TapOrderEvent(bloc, context, order));
  }
}