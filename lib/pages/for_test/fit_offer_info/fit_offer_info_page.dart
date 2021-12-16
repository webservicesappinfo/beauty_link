import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fit_offer_info_page_bloc.dart';

class FitOfferInfoPage extends StatelessWidget {
  final Offer offer;
  final AppUser client;
  final AppUser master;
  const FitOfferInfoPage({Key? key, required this.offer, required this.master, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => FitOfferInfoPageBloc(InitState(), offer, master, client),
        child: Scaffold(
            appBar: AppBar(title: Text('${offer.name}')),
            body: BlocConsumer<FitOfferInfoPageBloc, BaseStateV2>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var bloc = BlocProvider.of<FitOfferInfoPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(FitOfferInfoPageEvent(bloc));
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case FitOfferInfoPageEvent:
                        return _onLoadFitOfferInfoPageEvent(bloc, context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              },
            )));
  }

  Widget _onLoadFitOfferInfoPageEvent(FitOfferInfoPageBloc bloc, BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text('Offer name: ${bloc.fitOffer.name}'),
        SizedBox(height: 10),
        Text('Master name: ${bloc.master.name}'),
        SizedBox(height: 10),
        Text('Client name: ${bloc.client.name}'),
        SizedBox(height: 10),
        CustomButton(text: "Create order", clickEvent: CreateOrderBtnClickEvent(context, bloc), bloc: bloc)
      ],
    ));
  }
}
