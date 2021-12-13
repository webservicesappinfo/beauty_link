import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/pages/for_test/add_user_offer/add_user_offer_page_bloc.dart';
import 'package:beauty_link/widgets/custom_button.dart';
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
          appBar: AppBar(title: Text('add user')),
          body: BlocConsumer<AddUserOfferPageBloc, BaseStateV2>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              var bloc = BlocProvider.of<AddUserOfferPageBloc>(context);
              if (state is BeginEventState)
                return LoadingWidget();
              else
                return Column(
                  children: [
                    CustomTextField(hint: 'enter name', ontextChanged: bloc.onChangedOfferName),
                    SizedBox(height: 10),
                    CustomButton(text: 'Add offer', clickEvent: AddOfferBtnClick(bloc, context), bloc: bloc)
                  ],
                );
            },
          )),
    );
  }
}
