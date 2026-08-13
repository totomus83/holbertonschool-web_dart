import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    Map<String, dynamic> userData = jsonDecode(data);
    return 'Hello ${userData['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool hasUser = await checkCredentials();
    print('There is a user: $hasUser');
    if (hasUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
