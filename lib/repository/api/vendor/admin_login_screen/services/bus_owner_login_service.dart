import 'dart:collection';

import 'package:train_foodie_user/repository/api/vendor/admin_login_screen/model/bus_owner_login_res_model.dart';
import 'package:train_foodie_user/repository/hleper/api_helper.dart';
import 'package:train_foodie_user/repository/hleper/api_response.dart';

class BusOwnerLoginService {
  Future<APIResponse> onLogin({required Map<String, dynamic> body}) async {
    final APIResponse response = await ApiHelper.postData(
        endPoint: "/owner/token/",
        header: ApiHelper.getApiHeader(),
        body: body);
    if (response.error) {
      return response;
    } else {
      BusOwnerLoginResModel resDate =
          BusOwnerLoginResModel.fromJson(response.data);
      return APIResponse(data: resDate, error: false, errorMessage: '');
    }
  }
}
