import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/gen/order.pb.dart';
import 'package:beauty_link/models/order.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class OrderService {
  OrderService._internal();
  static final OrderService _singleton = OrderService._internal();
  factory OrderService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(
      ClientChannel(global.ip, port: global.port, options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<bool> addOrder(Order? order) async {
    return false;
    /*if (order == null) return false;
    var response = await mobileApiClient.apiAddOrder(new AddOrderRequest(
        name: order.name,
        offerGuid: order.offerGuid,
        userName: order.clientName,
        userGuid: order.clientGuid,
        masterName: order.masterName,
        masterGuid: order.masterGuid,
        skillName: order.skillName,
        skillGuid: order.skillGuid));
    return response.result;*/
  }

  Future<List<Order>> getOrders(String? userGuid, bool isMaster) async {
    var orders = <Order>[];
    return orders;
    /*var response = await mobileApiClient.apiGetOrders(new GetOrdersRequest(userGuid: userGuid, isMaster: isMaster));
    for (var i = 0; i < response.names.length; i++)
      orders.add(new Order(
        guid: response.guids[i],
        name: response.names[i],
        status: response.statuses[i],
        offerGuid: response.offerGuids[i],
        clientGuid: response.userGuids[i],
        clientName: response.userNames[i],
        masterName: response.masterNames[i],
        masterGuid: response.masterGuids[i],
        skillName: response.skillNames[i],
        skillGuid: response.skillGuids[i],
      ));
    return orders;*/
  }

  Future<bool> delOrder(String? guid) async {
    return false;
    /*if (guid?.isEmpty ?? true) return false;
    var response = await mobileApiClient.apiDelOrder(new DelOrderRequest(guid: guid));
    return response.result;*/
  }

  Future<bool> acceptOrder(String? guid) async {
    return false;
    /*if (guid?.isEmpty ?? true) return false;
    var response = await mobileApiClient.apiAcceptedOrder(new AcceptedOrderRequest(guid: guid));
    return response.result;*/
  }

  Future<bool> executeOrder(String? guid) async {
    return false;
    /*if (guid?.isEmpty ?? true) return false;
    var response = await mobileApiClient.apiExecutedOrder(new ExecutedOrderRequest(guid: guid));
    return response.result;*/
  }
}
