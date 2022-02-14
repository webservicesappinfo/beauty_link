import 'package:beauty_link/bloc/states.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/pages/master_offers/master_offers_page_bloc.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:beauty_link/widgets/entity_list_widget.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MasterOffersPage extends StatelessWidget {
  AppUser user;
  Company company;
  MasterOffersPage({Key? key, required this.user, required this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MasterOffersPageBloc(InitState(), user, company),
        child: Scaffold(
            appBar: AppBar(title: Text('${user.name} offers')),
            body: BlocConsumer<MasterOffersPageBloc, BaseState>(listener: (context, state) {
              if (state is InitState) {}
            }, builder: (context, state) {
              return Builder(builder: (context) {
                var bloc = BlocProvider.of<MasterOffersPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    LoadOffersPageEvent(context)..invoke();
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
      CustomDropDownButton(
          caption: 'filter',
          selectedItem: DropDownItem(caption: bloc.status),
          entities: [
            DropDownItem(caption: 'all'),
            DropDownItem(caption: 'actived'),
            DropDownItem(caption: 'submitted'),
            DropDownItem(caption: 'accepted'),
            DropDownItem(caption: 'executed')
          ],
          onChanged: (EntityBase? entity) {
            bloc.status = (entity as DropDownItem).getCaption();
            LoadOffersPageEvent(context)..invoke();
          }),
      Expanded(
          child: EntityListWidget(
              entities: bloc.offers, onTap: (EntityBase? entity) => TapUserEvent(context, entity as Offer)..invoke())),
      CustomButton(text: 'Add offer', clickEvent: () => AddMaterOfferBtnClick(context)..invoke())
    ]);
  }
}
