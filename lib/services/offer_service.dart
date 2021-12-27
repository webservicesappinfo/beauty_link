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
        masterGuid: offer.masterGuid,
        masterName: offer.masterName,
        skillGuid: offer.skillGuid,
        skillName: offer.skillName));
    return response.result;
  }

  Future<List<Offer>> getOffersByMaster(String? masterGuid, bool forMaster) async {
    var offers = <Offer>[];
    var response = await mobileApiClient
        .apiGetOffersByMaster(new GetOffersByMasterRequest(masterGuid: masterGuid, forMaster: forMaster));
    for (var i = 0; i < response.names.length; i++)
      offers.add(new Offer(
          guid: response.guids[i],
          name: response.names[i],
          masterGuid: response.masterGuids[i],
          masterName: response.masterNames[i],
          skillGuid: response.skillGuids[i],
          skillName: response.skillNames[i],
          status: response.statuses[i]));
    return offers;
  }

  Future<bool> delOffer(String? guid) async {
    if (guid?.isEmpty ?? true) return false;
    var response = await mobileApiClient.apiDelOffer(new DelOfferRequest(guid: guid));
    return response.result;
  }
}
