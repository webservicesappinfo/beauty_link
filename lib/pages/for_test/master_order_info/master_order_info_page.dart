import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/order.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'master_order_info_page_bloc.dart';

class MasterOrderInfoPage extends StatelessWidget {
  final Order order;
  final AppUser master;
  const MasterOrderInfoPage({Key? key, required this.order, required this.master}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MasterOrderInfoPageBloc(InitState(), order, master),
        child: Scaffold(
            appBar: AppBar(title: Text('${order.name}')),
            body: BlocConsumer<MasterOrderInfoPageBloc, BaseStateV2>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var bloc = BlocProvider.of<MasterOrderInfoPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(MasterOrderInfoPageEvent(bloc));
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case MasterOrderInfoPageEvent:
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

  Widget _onLoadPageEvent(MasterOrderInfoPageBloc bloc, BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text('Order name: ${bloc.order.name}'),
        Text('Order status: ${bloc.order.status}'),
        Text('Master name: ${bloc.order.masterName}'),
        Text('Client name: ${bloc.order.clientName}'),
        _btnByStatus(bloc, context)
      ],
    ));
  }

  Widget _btnByStatus(MasterOrderInfoPageBloc bloc, BuildContext context) {
    switch (bloc.order.status?.toLowerCase()) {
      case "actived":
        return CustomButton(text: "Cancel order", clickEvent: CancelOrderBtnClickEvent(context, bloc), bloc: bloc);
      case "submitted":
        return CustomButton(text: "Accepted order", clickEvent: AcceptOrderBtnClickEvent(context, bloc), bloc: bloc);
      case "accepted":
        return CustomButton(text: "Execute order", clickEvent: ExecuteOrderBtnClickEvent(context, bloc), bloc: bloc);
      default:
        return Container();
    }
  }
}
