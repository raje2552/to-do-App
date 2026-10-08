import 'package:shared_preferences/shared_preferences.dart';

class ControllerSharedPref {
  static late  SharedPreferences sharedPref;

  /* we build one object then SharedPreferences class for access to data
  * which storage it in local storage @initSharedPreferences is work on
  * assignment for variable @sharedPref value then SharedPreferences type  */
  static Future<void> initSharedPreferences() async {
    sharedPref = await SharedPreferences.getInstance();
  }



  /* This is the function that works with storage data with different
  datatype in local storage and */
  static Future<void> setData({required String key, required dynamic value}) async {
    if (value is int) {
      await sharedPref.setInt(key, value);
    } else if (value is String) {
      await sharedPref.setString(key, value);
    } else if (value is double) {
      await sharedPref.setDouble(key, value);
    } else if (value is bool) {
      await sharedPref.setBool(key, value);
    }
  }

  /**/
  static dynamic getData(String key){
    return sharedPref.get(key);
  }


}
