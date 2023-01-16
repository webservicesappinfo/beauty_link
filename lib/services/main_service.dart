import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/gen/msg.pb.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:beauty_link/models/company.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:beauty_link/models/order.dart';
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
    var reply = await mobileApiClient.getMainDataForUser(GetMainDataForUserRequest(userUIDFB: uidFB));
    return AppUser(name: reply.userName, uidFB: reply.userUIDFB, companies: convertCompanyReply(reply.companies));
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

  Future<bool> addMaster(AppUser? master, Company? company) async {
    if (master == null || company == null) return false;
    var reply = await mobileApiClient.addMaster(AddMasterRequest(
        master:
            MasterReply(uidFB: master.uidFB, name: master.name, companyGuid: company.guid, companyName: company.name)));
    return reply.result;
  }

  Future<bool> delMaster(AppUser? master, Company? company) async {
    if (master == null || company == null) return false;
    var reply = await mobileApiClient.delMaster(DelMasterRequest(
        master:
            MasterReply(uidFB: master.uidFB, name: master.name, companyGuid: company.guid, companyName: company.name)));
    return reply.result;
  }

  List<Company> convertCompanyReply(List<CompanyReply> reply) => reply
      .map((e) => Company(
          name: e.name,
          guid: e.guid,
          ownerGuid: e.ownerGuid,
          ownerName: e.ownerName,
          masters: convertMasterReply(e.masters)))
      .toList();

  List<AppUser> convertMasterReply(List<MasterReply> reply) =>
      reply.map((e) => AppUser(uidFB: e.uidFB, name: e.name, offers: convertOfferReply(e.offers))).toList();

  List<Offer> convertOfferReply(List<OfferApi> reply) => reply
      .map((e) => Offer(
          name: e.name,
          guid: e.guid,
          companyGuid: e.companyGuid,
          companyName: e.companyName,
          masterGuid: e.masterGuid,
          masterName: e.masterName,
          skillGuid: e.skillGuid,
          skillName: e.skillName))
      .toList();

  Future<bool> addOffer(Offer? offer) async {
    if (offer == null) return false;
    var reply = await mobileApiClient.addOffer(AddOfferRequest(
        offer: OfferApi(
            name: offer.name,
            companyGuid: offer.companyGuid,
            companyName: offer.companyName,
            masterGuid: offer.masterGuid,
            masterName: offer.masterName,
            skillGuid: offer.skillGuid,
            skillName: offer.skillName)));
    return reply.result;
  }

  Future<bool> delOffer(Offer? offer) async {
    if (offer == null) return false;
    var reply = await mobileApiClient.delOffer(DelOfferRequest(
        offer: OfferApi(
            name: offer.name, guid: offer.guid, companyGuid: offer.companyGuid, masterGuid: offer.masterGuid)));
    return reply.result;
  }

  Future<bool> addOrder(Order? order) async {
    if (order == null) return false;
    var reply = await mobileApiClient.addOrder(AddOrderRequest(
        order: OrderApi(
            name: order.name,
            userName: order.clientName,
            userGuid: order.clientGuid,
            masterGuid: order.masterGuid,
            masterName: order.masterName,
            skillGuid: order.skillGuid,
            skillName: order.skillName,
            status: order.status)));
    return reply.result;
  }

  Future<bool> delOrder(Order? order) async {
    if (order == null) return false;
    var reply = await mobileApiClient
        .delOrder(DelOrderRequest(order: OrderApi(name: order.name, guid: order.guid, masterGuid: order.masterGuid)));
    return reply.result;
  }
}
