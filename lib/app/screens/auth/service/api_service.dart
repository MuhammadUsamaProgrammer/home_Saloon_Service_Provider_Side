import 'dart:convert';
import 'package:home_saloon/app/core/api_const/client.dart';
import 'package:home_saloon/app/core/api_const/endPoints.dart';
import 'package:home_saloon/app/core/api_const/headers.dart';
import 'package:home_saloon/app/widgets/toast_message/toast_message.dart';
import 'package:http/http.dart' as http;

mixin ShortCodeService {
  Future<bool> shortCodeApi({required Map<String, String> variables}) async {
    try {
      String url = ClientsApi.clientAPI + endpointsAPI.endpointShortCode;
      Map<String, String>? headers = await HeadersAPI().headerAPI();

      var response = await http.post(Uri.parse(url),
          body: jsonEncode(variables), headers: headers);

      var responseData = jsonDecode(response.body.toString());
      if (response.statusCode > 199 && response.statusCode < 300) {
        print(responseData["message"].toString());
        showToastMessage(responseData["message"].toString());
        return true;
      } else {
        print('response =------>${response.statusCode}');
        print('failed');
        print(responseData["message"].toString());
        showToastMessage(responseData["message"].toString());
        return false;
      }
    } catch (e) {
      print('exception =--------->  ${e.toString()}');
      return false;
    }
  }

  Future<String> oTPApi({required Map<String, String> variables}) async {
    String key = '';
    try {
      String url = ClientsApi.clientAPI + endpointsAPI.endpointOTP;
      Map<String, String>? headers = await HeadersAPI().headerAPI();

      var response = await http.post(Uri.parse(url),
          body: jsonEncode(variables), headers: headers);

      var responseData = jsonDecode(response.body.toString());
      if (response.statusCode >= 200 && response.statusCode < 300) {
        print(responseData["message"].toString());
        showToastMessage(responseData["message"].toString());
        key = responseData["data"].toString();
        return key;
      } else {
        print('response =------>${response.statusCode}');
        print('failed');
        print(responseData["message"].toString());
        showToastMessage('Invalid OTP or Shortcode');
        return key;
      }
    } catch (e) {
      print('exception =--------->  ${e.toString()}');
      return key;
    }
  }
}



// catch (e) {
  //     print("objectttt $e");
  //     if (e is http.ClientException) {
  //       print('HTTP Client Exception: ${e.toString()}');
  //       return false;
  //     } else if (e is http.Response) {
  //       print('HTTP Response Error: ${e.statusCode.toString()}');
  //       print('Response Message: ${e.reasonPhrase}');
  //       try {
  //         var data = jsonDecode(e.body.toString());
  //         showToastMessage(data["message"].toString());
  //       } catch (jsonError) {
  //         print('Error decoding JSON: $jsonError');
  //       }
  //       return false;
  //     } else {
  //       print('Unknown error: ${e.toString()}');
  //       return false;
  //     }
  //   }
  // }