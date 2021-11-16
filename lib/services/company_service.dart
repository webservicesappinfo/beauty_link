import 'package:beauty_link/gen/company/company.pb.dart';
import 'package:beauty_link/gen/mobile_api/mobile_api.pbgrpc.dart';
import 'package:beauty_link/models/company.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class CompanyService {
  CompanyService._internal();
  static final CompanyService _singleton = CompanyService._internal();
  factory CompanyService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(ClientChannel(global.ip,
      port: global.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<bool> addCompany(Company? company) async {
    if (company == null) return false;
    var response = await mobileApiClient.apiAddCompany(
        new AddCompanyRequest(name: company.name, userGuid: company.userGuid));
    return response.result;
  }

  Future<List<Company>> getCompanies(String userGuid, bool owner) async {
    var companies = <Company>[];
    var response = await mobileApiClient.apiGetCompanies(
        new GetCompaniesRequest(userGuid: userGuid, owner: owner));
    for (var name in response.names) companies.add(new Company(name: name));
    return companies;
  }
}
