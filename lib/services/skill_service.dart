import 'package:beauty_link/gen/mobile_api.pbgrpc.dart';
import 'package:beauty_link/gen/skill.pb.dart';
import 'package:beauty_link/models/skill.dart';
import 'package:grpc/grpc.dart';
import 'package:beauty_link/global.dart' as global;

class SkillService {
  SkillService._internal();
  static final SkillService _singleton = SkillService._internal();
  factory SkillService() => _singleton;

  MobileApiClient mobileApiClient = MobileApiClient(ClientChannel(global.ip,
      port: global.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<bool> addSkill(Skill? skill) async {
    if (skill == null) return false;
    var response = await mobileApiClient
        .apiAddSkill(new AddSkillRequest(name: skill.name, desc: skill.desc));
    return response.result;
  }

  Future<List<Skill>> getSkills(String? userGuid) async {
    var skills = <Skill>[];
    var response = await mobileApiClient
        .apiGetSkills(new GetSkillsRequest(userGuid: userGuid));
    for (var i = 0; i < response.names.length; i++)
      skills.add(new Skill(
          guid: response.guids[i],
          name: response.names[i],
          desc: response.desc[i]));
    return skills;
  }

  Future<bool> delSkill(String? guid) async {
    if (guid?.isEmpty ?? true) return false;
    var response =
        await mobileApiClient.apiDelSkill(new DelSkillRequest(guid: guid));
    return response.result;
  }
}
