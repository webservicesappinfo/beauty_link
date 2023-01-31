import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grpc/grpc.dart';

import 'auth_service.dart';
import 'package:beauty_link/global.dart' as global;

class UserService {
  UserService._internal();
  static final UserService _singleton = UserService._internal();
  factory UserService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(
      ClientChannel(global.ip, port: global.port, options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  AppUser? get _currentUser => AuthService().user;

  Future<bool> addUser(AppUser? user) async {
    if (user == null) return false;
    var token = await AuthService().getToken();
    var response = await mobileApiClient.apiAddUser(new AddUserRequest(
        //guid: user.uidFB,
        name: "${user.name}/${user.email ?? ""}",
        //token: user.token
        token: token,
        uidFB: user.uidFB));
    return response.result;
  }

  Future<bool> delUser(AppUser? user) async {
    if (user == null) return false;
    var response = await mobileApiClient.apiDelUser(new DelUserRequest(uidFB: user.uidFB));
    return response.result;
  }

  Future<List<AppUser>> getUsers() async {
    var users = <AppUser>[];
    var response = await mobileApiClient.apiGetUsers(new GetUsersRequest(restriction: null));
    var curUserCaption = "${_currentUser?.name}/${_currentUser?.email}";
    for (var i = 0; i < response.names.length; i++) {
      if (response.names[i] == curUserCaption) continue;
      users.add(new AppUser(uidFB: response.uids[i], name: response.names[i]));
    }
    return users;
  }

  Future<List<AppUser>> getFitForCompanyUsers(String companyGuid, bool isConsistIn) async {
    var users = <AppUser>[];
    var response = await mobileApiClient
        .getFitForCompanyUsers(new GetFitForCompanyUsersRequest(companyGuid: companyGuid, isConsistIn: isConsistIn));
    for (var i = 0; i < response.guids.length; i++)
      users.add(new AppUser(uidFB: response.guids[i], name: response.names[i]));
    return users;
  }

  Future<LatLng?> getUserLocation(AppUser? user) async {
    if (user == null) return null;
    var reply = await mobileApiClient.apiGetUserLocation(new ApiGetUserLocationRequest(guid: user.uidFB));
    var lat = double.tryParse(reply.lat);
    var lng = double.tryParse(reply.lng);
    if (lat != null && lng != null) return LatLng(lat, lng);
    return null;
  }

  Future<bool> setUserLocation(AppUser user) async {
    if (user.location == null) return false;
    var reply = await mobileApiClient.apiSetUserLocation(new ApiSetUserLocationRequest(
        forGuid: user.uidFB, lat: user.location?.latitude.toString(), lng: user.location?.longitude.toString()));
    return reply.result;
  }

  void saveToken(AppUser user, String token) {}
}
