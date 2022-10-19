import 'package:beauty_link/gen/company.pb.dart';
import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class CompanyService {
  CompanyService._internal();
  static final CompanyService _singleton = CompanyService._internal();
  factory CompanyService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(
      ClientChannel(global.ip, port: global.port, options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<Company?> getCompany(String guid) async {
    var reply = await mobileApiClient.apiGetCompany(GetCompanyRequest(guid: guid));
    var company = Company(guid: reply.guid, name: reply.name, ownerGuid: reply.ownerGuid, ownerName: reply.ownerName);
    var lat = double.tryParse(reply.lat);
    var lng = double.tryParse(reply.lng);
    if (lat != null && lng != null) company.location = LatLng(lat, lng);
    for (var i = 0; i < reply.masterGuids.length; i++)
      company.masters.add(AppUser(uidFB: reply.masterGuids[i], name: reply.masterNames[i]));
    return company;
  }

  Future<bool> addCompany(Company? company) async {
    if (company == null) return false;
    /*var response = await mobileApiClient.apiAddCompany(
        new AddCompanyRequest(name: company.name, ownerGuid: company.ownerGuid, ownerName: company.ownerName));
    return response.result;*/
    return true;
  }

  Future<bool> joinToCompany(String? userGuid, String? userName, String? companyGuid, String? companyName) async {
    if ((userGuid?.isEmpty ?? true) || (companyGuid?.isEmpty ?? true)) return false;
    var response = await mobileApiClient.apiJoinToCompany(new JoinToCompanyRequest(
        userGuid: userGuid, userName: userName, companyGuid: companyGuid, companyName: companyName));
    return response.result;
  }

  Future<List<Company>> getCompanies(String userGuid, String type) async {
    var companies = <Company>[];
    var response = await mobileApiClient.apiGetCompanies(new GetCompaniesRequest(userGuid: userGuid, type: type));
    for (var i = 0; i < response.names.length; i++)
      companies.add(new Company(guid: response.guids[i], name: response.names[i]));
    return companies;
  }

  Future<bool> delCompany(String? guid) async {
    if (guid?.isEmpty ?? true) return false;
    /*var response = await mobileApiClient.apiDelCompany(new DelCompanyRequest(guid: guid));
    return response.result;*/
    return true;
  }

  Future<bool> setCompanyLocation(Company company) async {
    if (company.location == null) return false;
    var reply = await mobileApiClient.apiSetCompanyLocation(new SetCompanyLocationRequest(
        guid: company.guid, lat: company.location?.latitude, lng: company.location?.longitude));
    return reply.result;
  }
}
