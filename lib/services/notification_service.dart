import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/models/app_user.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class NotificationService {
  NotificationService._internal();
  static final NotificationService _singleton = NotificationService._internal();
  factory NotificationService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(
      ClientChannel(global.ip, port: global.port, options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  /*Future<String> findLastMessage(AppUser forUser) async {
    var reply = await mobileApiClient
        .apiFindLastMessage(new FindLastGetMessageRequest(fromGuid: AuthService().user?.uidFB, forGuid: forUser.uidFB));
    return reply.msg;
  }*/

  Future<bool> sendMessage(String? fromUserGuid, String? forUserGuid, String msg) async {
    if ((fromUserGuid?.isEmpty ?? true) || (forUserGuid?.isEmpty ?? true)) return false;
    var reply = await mobileApiClient
        .apiSendMessage(new SendNotificationRequest(fromGuid: fromUserGuid, forGuid: forUserGuid, msg: msg));
    return reply.status;
  }
}
