import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/gen/msg.pb.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/services/auth_service.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class MainService {
  MainService._internal();
  static final MainService _singleton = MainService._internal();
  factory MainService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(
      ClientChannel(global.ip, port: global.port, options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  AppUser? get _currentUser => AuthService().user;

  Future<AppUser?> getMainData(String uidFB) async {
    var reply = await mobileApiClient.getMainDataForUser(GetMainDataForUserRequest(userGuid: uidFB));
    return AppUser(name: reply.userName, uidFB: reply.userUidFB, companies: convertCompanyReply(reply.companies));
  }

  Future<bool> addCompany(AppUser? user, Company company) async {
    if (user == null) return false;
    var reply = await mobileApiClient
        .addCompany(AddCompanyRequest(name: company.name, ownerGuid: user.uidFB, ownerName: user.name));
    return reply.result;
  }

  Future<bool> delCompany(Company? company) async {
    if (company == null) return false;
    var reply = await mobileApiClient.delCompany(DelCompanyRequest(guid: company.guid));
    return reply.result;
  }

  List<Company> convertCompanyReply(List<CompanyReply> reply) {
    return reply
        .map((e) => Company(name: e.name, guid: e.guid, ownerGuid: e.ownerGuid, ownerName: e.ownerName))
        .toList();
  }
}
