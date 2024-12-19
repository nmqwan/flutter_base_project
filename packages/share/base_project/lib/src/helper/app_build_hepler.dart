import 'package:package_info_plus/package_info_plus.dart';

class AppBuildHelper {
  static Future<String> getAppCurrentVersion() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    return '${info.version}.${info.buildNumber}';
  }
}
