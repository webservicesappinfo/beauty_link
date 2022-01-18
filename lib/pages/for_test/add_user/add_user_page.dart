import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/pages/for_test/add_user/add_user_page_bloc.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_text_field.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddUserPage extends StatelessWidget {
  const AddUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddUserPageBloc(InitState()),
      child: Scaffold(
          appBar: AppBar(title: Text('add user')),
          body: BlocConsumer<AddUserPageBloc, BaseStateV2>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              var bloc = BlocProvider.of<AddUserPageBloc>(context);
              if (state is BeginEventState)
                return LoadingWidget();
              else
                return Column(
                  children: [
                    CustomTextField(hint: 'enter name', ontextChanged: bloc.onChangedUserName),
                    SizedBox(height: 10),
                    CustomButton(text: 'Add user', clickEvent: () => AddUserBtnClick(context)..invoke())
                  ],
                );
            },
          )),
    );
  }
}
