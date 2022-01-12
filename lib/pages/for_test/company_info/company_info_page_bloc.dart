import 'package:beauty_link/bloc/base_bloc_v2.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/company_service.dart';

class CompanyInfoPageBloc extends BaseBlocV2 {
  Company company;

  CompanyInfoPageBloc(BaseStateV2 initialState, this.company) : super(initialState);

  Future getCompanyInfo() async {
    await CompanyService().getCompany(company.guid ?? '').then((value) {
      if (value != null) {
        company = value;
      }
    });
  }

  Future delCompany() async {
    await CompanyService().delCompany(company.guid);
  }
}

class CompanyInfoPageLoadEvent extends BaseEventV2 {
  CompanyInfoPageBloc bloc;
  CompanyInfoPageLoadEvent(this.bloc) : super();

  @override
  Future<void> execute() async {
    await bloc.getCompanyInfo();
  }
}
