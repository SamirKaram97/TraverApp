import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {

   late SharedPreferences _sharedPreferences;

   sharedPrefInit()async
  {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Removes a value from SharedPreferences with given [key].
   removeData(String key) async {
    debugPrint('SharedPrefHelper : data with key : $key has been removed');
    await _sharedPreferences.remove(key);
  }

  /// Removes all keys and values in the SharedPreferences
   clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    await _sharedPreferences.clear();
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
   setData(String key, value) async {
    debugPrint("SharedPrefHelper : setData with key : $key and value : $value");
    switch (value.runtimeType) {
      case String:
        await _sharedPreferences.setString(key, value);
        break;
      case int:
        await _sharedPreferences.setInt(key, value);
        break;
      case bool:
        await _sharedPreferences.setBool(key, value);
        break;
      case double:
        await _sharedPreferences.setDouble(key, value);
        break;
      default:
        return null;
    }
  }

  /// Gets a bool value from SharedPreferences with given [key].
   getBool(String key) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    return _sharedPreferences.getBool(key) ?? false;
  }

  /// Gets a double value from SharedPreferences with given [key].
   getDouble(String key) async {
    debugPrint('SharedPrefHelper : getDouble with key : $key');
    return _sharedPreferences.getDouble(key) ?? 0.0;
  }

  /// Gets an int value from SharedPreferences with given [key].
   getInt(String key) async {
    debugPrint('SharedPrefHelper : getInt with key : $key');
    return _sharedPreferences.getInt(key) ?? 0;
  }

  /// Gets an String value from SharedPreferences with given [key].
   getString(String key) async {
    debugPrint('SharedPrefHelper : getString with key : $key');
    return _sharedPreferences.getString(key) ?? '';
  }
  //
  // /// Saves a [value] with a [key] in the FlutterSecureStorage.
  //  setSecuredString(String key, String value) async {
  //   const flutterSecureStorage = FlutterSecureStorage();
  //   debugPrint(
  //       "FlutterSecureStorage : setSecuredString with key : $key and value : $value");
  //   await flutterSecureStorage.write(key: key, value: value);
  // }
  //
  // /// Gets an String value from FlutterSecureStorage with given [key].
  //  getSecuredString(String key) async {
  //   const flutterSecureStorage = FlutterSecureStorage();
  //   debugPrint('FlutterSecureStorage : getSecuredString with key :');
  //   return await flutterSecureStorage.read(key: key) ?? '';
  // }
  //
  // /// Removes all keys and values in the FlutterSecureStorage
  //  clearAllSecuredData() async {
  //   debugPrint('FlutterSecureStorage : all data has been cleared');
  //   const flutterSecureStorage = FlutterSecureStorage();
  //   await flutterSecureStorage.deleteAll();
  // }
}
