import 'dart:async';

import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:beauty_link/pages/for_test/fit_offers/map_page.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_gridview.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fit_offers_page_bloc.dart';

class FitOffersPage extends StatelessWidget {
  final AppUser master;
  final Skill skill;
  final AppUser client;
  FitOffersPage({Key? key, required this.master, required this.skill, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => FitOffersPageBloc(InitState(), master, skill, client),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                  bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.list), text: 'List'),
                        Tab(icon: Icon(Icons.location_on), text: 'Map'),
                      ],
                      indicator: ShapeDecoration(
                          shape: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent, width: 0, style: BorderStyle.solid)),
                          gradient: LinearGradient(colors: [Colors.pink, Color(0xff01ff80)]))),
                  title: Text('Offers')),
              body: BlocConsumer<FitOffersPageBloc, BaseStateV2>(listener: (context, state) {
                if (state is InitState) {}
              }, builder: (context, state) {
                return Builder(builder: (context) {
                  var bloc = BlocProvider.of<FitOffersPageBloc>(context);
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
              })),
        ));
  }

  Widget _onOffersPageLoadedState(FitOffersPageBloc bloc, BuildContext context) {
    return TabBarView(physics: NeverScrollableScrollPhysics(), children: [
      Column(children: [Expanded(child: EntityListWidget(entities: bloc.offers, onTap: _onTap))]),
      Column(children: [Expanded(child: _map())])
    ]);
  }

  dynamic _onTap(BuildContext context, EntityBase entity) {
    var offer = entity as Offer;
    var bloc = BlocProvider.of<FitOffersPageBloc>(context);
    bloc.add(TapOfferEvent(bloc, context, offer));
  }

  Widget _map() {
    return MapPage(location: null);
  }
}
