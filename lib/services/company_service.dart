import 'package:beauty_link/gen/company.pb.dart';
import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
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
        new AddCompanyRequest(name: company.name, userGuid: company.ownerGuid));
    return response.result;
  }

  Future<bool> joinToCompany(
      String? userGuid, String? companyGuid, String? companyName) async {
    if ((userGuid?.isEmpty ?? true) || (companyGuid?.isEmpty ?? true))
      return false;
    var response = await mobileApiClient.apiJoinToCompany(
        new JoinToCompanyRequest(
            userGuid: userGuid,
            companyGuid: companyGuid,
            companyName: companyName));
    return response.result;
  }

  Future<List<Company>> getCompanies(String userGuid, String type) async {
    var companies = <Company>[];
    var response = await mobileApiClient.apiGetCompanies(
        new GetCompaniesRequest(userGuid: userGuid, type: type));
    for (var i = 0; i < response.names.length; i++)
      companies
          .add(new Company(guid: response.guids[i], name: response.names[i]));
    return companies;
  }

  Future<bool> delCompany(String? guid) async {
    if (guid?.isEmpty ?? true) return false;
    var response =
        await mobileApiClient.apiDelCompany(new DelCompanyRequest(guid: guid));
    return response.result;
  }
}
