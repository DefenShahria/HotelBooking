import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';

import 'networkResponse.dart';


class Networkcall {

  Future<Networkresponse> postRequest(String url, Map<String, dynamic> body,
      {bool islogin = false}) async {
    try {
      print(body);
      Response response = await post(
        Uri.parse(url), headers: {},
        body: jsonEncode(body),

      );
      print(response.statusCode);
      log(response.statusCode.toString());

      if (response.statusCode == 200) {
        try{
          print(jsonDecode(response.body));

          return Networkresponse(
              true, response.statusCode, jsonDecode(response.body));
        }catch(e){
          print(e.toString());
        }
      } else {
        return Networkresponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return Networkresponse(false, -1, null);
  }

  Future<void> gotoLogin() async {}
}