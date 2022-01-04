import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'find_offer_page_bloc.dart';

class FindOfferPage extends StatelessWidget {
  final AppUser client;
  FindOfferPage({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => FindOfferPageBloc(InitState(), client),
        child: Scaffold(
            appBar: AppBar(title: Text('find offer for ${client.name}')),
            body: BlocConsumer<FindOfferPageBloc, BaseStateV2>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                var bloc = BlocProvider.of<FindOfferPageBloc>(context);
                switch (state.runtimeType) {
                  case InitState:
                    bloc.add(LoadFindOfferPageEvent(bloc));
                    return LoadingWidget();
                  case BeginEventState:
                    return LoadingWidget();
                  case EndEventState:
                    switch ((state as EndEventState).event.runtimeType) {
                      case LoadFindOfferPageEvent:
                        return _onLoadState(bloc, context);
                      default:
                        return Text('empty state');
                    }
                  default:
                    return Text('empty state');
                }
              },
            )));
  }

  Widget _onLoadState(FindOfferPageBloc bloc, BuildContext context) {
    return Column(
      children: [
        CustomDropDownButton(caption: 'Select master', entities: bloc.masters, onChanged: bloc.onMasterChanged),
        CustomDropDownButton(caption: 'Select skill', entities: bloc.skills, onChanged: bloc.onSkillChanged),
        CustomButton(text: 'Find', clickEvent: FindBtnClickEvent(bloc, context), bloc: bloc)
      ],
    );
  }
}
