import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/widgets/custom_button.dart';
import 'package:beauty_link/widgets/custom_dropdownbutton.dart';
import 'package:beauty_link/widgets/custom_dropdownfield.dart';
import 'package:beauty_link/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
                    LoadFindOfferPageEvent(context)..invoke();
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
    var _controller = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomDropDownField(
              hint: 'Select master',
              items: bloc.masters.map((e) => DropDownFieldItem(caption: e.name, entity: e)).toList(),
              onChanged: bloc.onMasterChanged),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomDropDownField(
              hint: 'Select skill',
              items: bloc.skills.map((e) => DropDownFieldItem(caption: e.name, entity: e)).toList(),
              onChanged: bloc.onSkillChanged),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            readOnly: true,
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'date range',
              suffixIcon: IconButton(
                  icon: Icon(Icons.date_range),
                  onPressed: () {
                    showDialog<Widget>(
                        context: context,
                        barrierColor: Colors.white,
                        builder: (BuildContext context) {
                          return SfDateRangePicker(
                            showActionButtons: true,
                            selectionMode: DateRangePickerSelectionMode.range,
                            monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
                            onSubmit: (Object? value) {
                              bloc.pickerDateRange = value as PickerDateRange;
                              if (bloc.pickerDateRange == null)
                                _controller.clear();
                              else {
                                var startYaer = bloc.pickerDateRange?.startDate?.year;
                                var startMonth = bloc.pickerDateRange?.startDate?.month;
                                var startday = bloc.pickerDateRange?.startDate?.day;
                                var endYaer = bloc.pickerDateRange?.endDate?.year;
                                var endMonth = bloc.pickerDateRange?.endDate?.month;
                                var endday = bloc.pickerDateRange?.endDate?.day;
                                _controller.text = "$startYaer.$startMonth.$startday - $endYaer.$endMonth.$endday";
                              }
                              Navigator.pop(context);
                            },
                            onCancel: () {
                              _controller.text = '';
                              Navigator.pop(context);
                            },
                          );
                        });
                  }),
            ),
          ),
        ),
        CustomButton(text: 'Find', clickEvent: () => FindBtnClickEvent(context)..invoke())
      ],
    );
  }
}
