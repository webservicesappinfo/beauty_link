import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'client_order_info_page_bloc.dart';

class ClientOrderInfoPage extends StatelessWidget {
  final Order order;
  final AppUser client;
  const ClientOrderInfoPage({Key? key, required this.order, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ClientOrderInfoPageBloc(InitState(), order, client),
        child: Scaffold(
            appBar: AppBar(title: Text('${order.name}')),
            body: BlocConsumer<ClientOrderInfoPageBloc, BaseState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var bloc = BlocProvider.of<ClientOrderInfoPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    ClientOrderInfoPageEvent(context)..invoke();
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case ClientOrderInfoPageEvent:
                        return _onLoadPageEvent(bloc, context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              },
            )));
  }

  Widget _onLoadPageEvent(ClientOrderInfoPageBloc bloc, BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text('Order name: ${bloc.order.name}'),
        Text('Order status: ${bloc.order.status}'),
        Text('Master name: ${bloc.order.masterName}'),
        Text('Client name: ${bloc.order.clientName}'),
        bloc.order.status == "Submitted"
            ? CustomButton(text: "Cancel order", clickEvent: () => CancelOrderBtnClickEvent(context)..invoke())
            : Container()
      ],
    ));
  }
}
