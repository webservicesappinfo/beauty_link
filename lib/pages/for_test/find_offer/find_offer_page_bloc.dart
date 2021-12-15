import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/entity_base.dart';
import 'package:beauty_link/services/user_service.dart';

class FindOfferPageBloc extends BaseBlocV2 {
  AppUser client;
  AppUser? selectedMaster;
  List<AppUser> masters = [];
  String? masterName;
  FindOfferPageBloc(BaseStateV2 initialState, this.client) : super(initialState);

  Future getMasters() async {
    await UserService()
        .getUsers()
        .then((value) => masters = value.where((element) => element.uidFB != client.uidFB).toList());
  }

  void onMasterChanged(EntityBase? master) => selectedMaster = master as AppUser;
}

class LoadFindOfferPageEvent extends BaseEventV2 {
  FindOfferPageBloc bloc;
  LoadFindOfferPageEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getMasters();
  }
}
