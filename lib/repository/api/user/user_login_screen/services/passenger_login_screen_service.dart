import 'package:train_foodie_user/repository/api/user/user_login_screen/model/passenger_login_res_model.dart';
import 'package:train_foodie_user/repository/hleper/api_helper.dart';
import 'package:train_foodie_user/repository/hleper/api_response.dart';

class PassengerLoginScreenService {
  Future<APIResponse> onPassenrLogin(
      {required Map<String, dynamic> body}) async {
    final APIResponse response = await ApiHelper.postData(
        body: body,
        endPoint: "/passenger/token/",
        header: ApiHelper.getApiHeader());
    if (response.error) {
      return response;
    } else {
      PassengerLoginResModel redData =
          PassengerLoginResModel.fromJson(response.data);
      return APIResponse(data: redData, error: false, errorMessage: '');
    }
  }
}
