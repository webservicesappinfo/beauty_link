import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/gen/offer.pb.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class OfferService {
  OfferService._internal();
  static final OfferService _singleton = OfferService._internal();
  factory OfferService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(
      ClientChannel(global.ip, port: global.port, options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<bool> addOffer(Offer? offer) async {
    if (offer == null) return false;
    var response = await mobileApiClient.apiAddOffer(new AddOfferRequest(
        name: offer.name,
        companyGuid: offer.companyGuid,
        companyName: offer.companyName,
        masterGuid: offer.masterGuid,
        masterName: offer.masterName,
        skillGuid: offer.skillGuid,
        skillName: offer.skillName));
    return response.result;
  }

  Future<List<Offer>> getOffersByMaster(String? masterGuid, String? clientGuid, bool forMaster) async {
    var response = await mobileApiClient.apiGetOffersByMaster(
        new GetOffersByMasterRequest(masterGuid: masterGuid, clientGuid: clientGuid, forMaster: forMaster));
    return getOffersFromReply(response);
  }

  Future<List<Offer>> getOffers(String? masterGuid, String? skillGuid, String? clientGuid, bool forMaster) async {
    var response = await mobileApiClient.apiGetOffers(new GetOffersRequest(
        masterGuid: masterGuid, skillGuid: skillGuid, clientGuid: clientGuid, forMaster: forMaster));
    return getOffersFromReply(response);
  }

  Future<bool> delOffer(String? guid) async {
    if (guid?.isEmpty ?? true) return false;
    var response = await mobileApiClient.apiDelOffer(new DelOfferRequest(guid: guid));
    return response.result;
  }

  List<Offer> getOffersFromReply(GetOffersReply reply) {
    var offers = <Offer>[];
    for (var i = 0; i < reply.names.length; i++)
      offers.add(new Offer(
          guid: reply.guids[i],
          name: reply.names[i],
          companyGuid: reply.companyGuids[i],
          companyName: reply.companyNames[i],
          masterGuid: reply.masterGuids[i],
          masterName: reply.masterNames[i],
          skillGuid: reply.skillGuids[i],
          skillName: reply.skillNames[i],
          status: reply.statuses[i]));
    return offers;
  }
}
