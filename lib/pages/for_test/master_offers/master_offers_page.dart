import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/for_test/master_offers/master_offers_page_bloc.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MasterOffersPage extends StatelessWidget {
  AppUser user;
  MasterOffersPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MasterOffersPageBloc(InitState(), user),
        child: Scaffold(
            appBar: AppBar(title: Text('Offers')),
            body: BlocConsumer<MasterOffersPageBloc, BaseStateV2>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Builder(builder: (context) {
                var bloc = BlocProvider.of<MasterOffersPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(LoadOffersPageEvent(context, bloc));
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case LoadOffersPageEvent:
                        return _onOffersPageLoadedState(bloc, context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              });
            })));
  }

  Widget _onOffersPageLoadedState(MasterOffersPageBloc bloc, BuildContext context) {
    return Column(children: [
      Expanded(child: EntityListWidget(entities: bloc.offers, onTap: _onTap)),
      SizedBox(height: 10),
      CustomButton(text: 'Add offer', clickEvent: AddOfferBtnClick(bloc, context), bloc: bloc)
    ]);
  }

  dynamic _onTap(BuildContext context, EntityBase entity) {
    var offer = entity as Offer;
    var bloc = BlocProvider.of<MasterOffersPageBloc>(context);
    bloc.add(TapUserEvent(bloc, context, offer));
  }
}
