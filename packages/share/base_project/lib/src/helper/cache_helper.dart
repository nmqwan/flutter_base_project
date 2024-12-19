import '../../base_project.dart';

class CacheHelper {
  static bool getBool({
    required String key,
  }) {
    return getBoolAsync(key);
  }

  static double getDouble({
    required String key,
  }) {
    return getDoubleAsync(key);
  }

  static int getInt({
    required String key,
  }) {
    return getIntAsync(key);
  }

  static String getString({
    required String key,
  }) {
    return getStringAsync(key);
  }

  static Map<String, dynamic> getJson({
    required String key,
  }) {
    return getJSONAsync(key);
  }

  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    return await setValue(key, value);
  }

  static Future<bool> removeData({
    required String key,
  }) async {
    return await removeKey(key);
  }

  static Future<bool> clear() async {
    String? username = getString(key: USERNAME);
    String? password = getString(key: PASSWORD);
    var sharePref = await getSharedPref();
    bool result = await sharePref.clear();
    Log.info("USER - PASS LOGOUT", "$username  ---  $password");
    if (result) {
      await saveData(key: USERNAME, value: username);
      await saveData(key: PASSWORD, value: password);
    }
    return result;
  }
}
