import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/add_user_offer/add_user_offer_page_bloc.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:beauty_link/widgets/custom_text_field.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddUserOfferPage extends StatelessWidget {
  AppUser user;
  AddUserOfferPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddUserOfferPageBloc(InitState(), user),
      child: Scaffold(
          appBar: AppBar(title: Text('add offer')),
          body: BlocConsumer<AddUserOfferPageBloc, BaseStateV2>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              var bloc = BlocProvider.of<AddUserOfferPageBloc>(context);
              switch (state.runtimeType) {
                case InitState:
                  bloc.add(AddOfferInfoPageLoad(bloc));
                  return LoadingWidget();
                case BeginEventState:
                  return LoadingWidget();
                case EndEventState:
                  switch ((state as EndEventState).event.runtimeType) {
                    case AddOfferInfoPageLoad:
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextField(hint: 'enter name', ontextChanged: bloc.onChangedOfferName),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomDropDownField(
                                label: 'Select skill',
                                items: bloc.skills.map((e) => DropDownFieldItem(caption: e.name, entity: e)).toList(),
                                onChanged: bloc.onSkillChanged),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomDropDownField(
                                label: 'Select company',
                                items: bloc.companies.map((e) => DropDownFieldItem(caption: e.name, entity: e)).toList(),
                                onChanged: bloc.onCompanyChanged),
                          ),
                          CustomButton(text: 'Add offer', clickEvent: AddOfferBtnClick(bloc, context), bloc: bloc)
                        ],
                      );
                    default:
                      return LoadingWidget();
                  }
                default:
                  return LoadingWidget();
              }
            },
          )),
    );
  }
}
