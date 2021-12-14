import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/gen/offer.pb.dart';
import 'package:beauty_link/models/offer.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class OfferService {
  OfferService._internal();
  static final OfferService _singleton = OfferService._internal();
  factory OfferService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(ClientChannel(global.ip,
      port: global.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<bool> addOffer(Offer? offer) async {
    if (offer == null) return false;
    var response = await mobileApiClient.apiAddOffer(new AddOfferRequest(
        name: offer.name,
        masterName: offer.masterName,
        skillName: offer.skillName));
    return response.result;
  }

  Future<List<Offer>> getOffers(String? userGuid) async {
    var skills = <Offer>[];
    var response = await mobileApiClient
        .apiGetOffers(new GetOffersRequest(userGuid: userGuid));
    for (var i = 0; i < response.names.length; i++)
      skills.add(new Offer(
          guid: response.guids[i],
          name: response.names[i],
          masterGuid: response.masterGuids[i],
          masterName: response.masterNames[i],
          skillGuid: response.skillGuids[i],
          skillName: response.skillNames[i]));
    return skills;
  }

  Future<bool> delSkill(String? guid) async {
    if (guid?.isEmpty ?? true) return false;
    var response =
        await mobileApiClient.apiDelOffer(new DelOfferRequest(guid: guid));
    return response.result;
  }
}
