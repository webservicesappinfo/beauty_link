import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'master_offer_info_bloc.dart';

class MasterOfferInfoPage extends StatelessWidget {
  final Offer offer;
  final AppUser master;
  const MasterOfferInfoPage({Key? key, required this.offer, required this.master}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MasterOfferInfoPageBloc(InitState(), offer, master),
        child: Scaffold(
            appBar: AppBar(title: Text('${offer.name}')),
            body: BlocConsumer<MasterOfferInfoPageBloc, BaseStateV2>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var bloc = BlocProvider.of<MasterOfferInfoPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(MasterOfferInfoPageEvent(bloc));
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case MasterOfferInfoPageEvent:
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

  Widget _onLoadPageEvent(MasterOfferInfoPageBloc bloc, BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text('Offer name: ${bloc.offer.name}'),
        Text('Master name: ${bloc.offer.masterName}'),
        Text('Skill name: ${bloc.offer.skillName}'),
        CustomButton(text: "Del offer", clickEvent: DelOfferEvent(bloc, context), bloc: bloc)
      ],
    ));
  }
}
