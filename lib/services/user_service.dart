import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/gen/user.pb.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grpc/grpc.dart';

import 'auth_service.dart';
import 'package:beauty_link/global.dart' as global;

class UserService {
  UserService._internal();
  static final UserService _singleton = UserService._internal();
  factory UserService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(ClientChannel(global.ip,
      port: global.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  AppUser? get _currentUser => AuthService().user;

  Future<bool> addUser(AppUser? user) async {
    if (user == null) return false;
    var response = await mobileApiClient.apiAddUser(new AddUserRequest(
        //guid: user.uidFB,
        name: "${user.name}/${user.email ?? ""}",
        /*token: user.token*/
        uidFB: user.uidFB));
    return response.result;
  }

  Future<bool> delUser(AppUser? user) async {
    if (user == null) return false;
    var response =
        await mobileApiClient.apiDelUser(new DelUserRequest(uidFB: user.uidFB));
    return response.result;
  }

  Future<List<AppUser>> getUsers() async {
    var users = <AppUser>[];
    var response = await mobileApiClient
        .apiGetUsers(new GetUsersRequest(restriction: null));
    var curUserCaption = "${_currentUser?.name}/${_currentUser?.email}";
    for (var item in response.names) {
      var parts = item.split(':').toList();
      if (parts.length > 1) {
        if (parts[1] != curUserCaption)
          users.add(new AppUser(uidFB: parts[0], name: parts[1]));
      }
    }
    return users;
  }

  Future<String> findLastMessage(AppUser anotherUser) async {
    var reply = await mobileApiClient.apiFindLastMessage(
        new ApiFindLastMessageRequest(
            fromGuid: AuthService().user?.uidFB, forGuid: anotherUser.uidFB));
    return reply.msg;
  }

  Future<bool> sendMessage(AppUser anotherUser, String msg) async {
    var reply = await mobileApiClient.apiSendMessage(new ApiSendMessageRequest(
        fromGuid: _currentUser?.uidFB, forGuid: anotherUser.uidFB, msg: msg));
    return reply.status;
  }

  Future<LatLng?> getUserLocation(AppUser? user) async {
    if (user == null) return null;
    var reply = await mobileApiClient
        .apiGetUserLocation(new ApiGetUserLocationRequest(guid: user.uidFB));
    var lat = double.tryParse(reply.lat);
    var lng = double.tryParse(reply.lng);
    if (lat != null && lng != null) return LatLng(lat, lng);
    return null;
  }

  Future<bool> setUserLocation(AppUser user) async {
    if (user.location == null) return false;
    var reply = await mobileApiClient.apiSetUserLocation(
        new ApiSetUserLocationRequest(
            forGuid: user.uidFB,
            lat: user.location?.latitude.toString(),
            lng: user.location?.longitude.toString()));
    return reply.result;
  }

  void saveToken(AppUser user, String token) {}
}
