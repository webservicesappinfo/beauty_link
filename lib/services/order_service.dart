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
    if (order == null) return false;
    var response = await mobileApiClient.apiAddOrder(new AddOrderRequest(
        name: order.name,
        userName: order.userName,
        userGuid: order.userGuid,
        masterName: order.masterName,
        masterGuid: order.masterGuid,
        skillName: order.skillName,
        skillGuid: order.skillGuid));
    return response.result;
  }

  Future<List<Order>> getOrders(String? userGuid) async {
    var orders = <Order>[];
    var response = await mobileApiClient.apiGetOrders(new GetOrdersRequest(userGuid: userGuid));
    for (var i = 0; i < response.names.length; i++)
      orders.add(new Order(
        guid: response.guids[i],
        name: response.names[i],
        userGuid: response.userGuids[i],
        userName: response.userNames[i],
        masterName: response.masterNames[i],
        masterGuid: response.masterGuids[i],
        skillName: response.skillNames[i],
        skillGuid: response.skillGuids[i],
      ));
    return orders;
  }

  Future<bool> delOrder(String? guid) async {
    if (guid?.isEmpty ?? true) return false;
    var response = await mobileApiClient.apiDelOrder(new DelOrderRequest(guid: guid));
    return response.result;
  }
}
