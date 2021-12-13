import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_text_field.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_user_company_page_bloc.dart';

class AddUserCompanyPage extends StatelessWidget {
  final AppUser user;
  const AddUserCompanyPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddUserCompanyPageBloc(InitState(), user),
      child: Scaffold(
          appBar: AppBar(title: Text('add user')),
          body: BlocConsumer<AddUserCompanyPageBloc, BaseStateV2>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              var bloc = BlocProvider.of<AddUserCompanyPageBloc>(context);
              if (state is BeginEventState)
                return LoadingWidget();
              else
                return Column(
                  children: [
                    CustomTextField(hint: 'enter name', ontextChanged: bloc.onChangedCompanyName),
                    SizedBox(height: 10),
                    CustomButton(text: 'Add company', clickEvent: AddUserBtnClick(bloc, context), bloc: bloc)
                  ],
                );
            },
          )),
    );
  }
}
