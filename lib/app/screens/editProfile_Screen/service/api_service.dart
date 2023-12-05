import 'dart:convert';
import 'package:home_saloon/app/core/api_const/client.dart';
import 'package:home_saloon/app/core/api_const/endPoints.dart';
import 'package:home_saloon/app/core/api_const/headers.dart';
import 'package:home_saloon/app/screens/editProfile_Screen/model/edit_profile_model.dart';
import 'package:home_saloon/app/widgets/toast_message/toast_message.dart';
import 'package:http/http.dart' as http;

mixin EditProfileService {
  Future<ProfileData> profileDataGet() async {
    try {
      String url = ClientsApi.clientAPI + endpointsAPI.endpointProfileData;
      Map<String, String>? headers = await HeadersAPI().headerAPI();

      var response = await http.get(Uri.parse(url), headers: headers);
      var data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        final profileData = ProfileData.fromJson(data);

        print(data["message"].toString());
        showToastMessage('Data fetched successfully');
        return profileData;
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Exception during profile data retrieval: $e');
      throw Exception('Failed to load data');
    }
  }
}



  // Future<ProfileData> profileDataGet() async {
  //   print('=+---------->  profile apui hitted');
  //   String url = ClientsApi.clientAPI + endpointsAPI.endpointProfileData;
  //   Map<String, String>? headers = await HeadersAPI().headerAPI();

  //   var response = await http.post(Uri.parse(url), headers: headers);
  //   var responseData = jsonDecode(response.body.toString());
  //   if (response.statusCode > 199 && response.statusCode < 300) {
  //     final profileData = profileDataFromJson(responseData);

  //     print(responseData["message"].toString());
  //     showToastMessage(responseData["message"].toString());
  //     return profileData;
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }



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