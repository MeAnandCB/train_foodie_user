import 'package:train_foodie_user/repository/hleper/api_helper.dart';
import 'package:train_foodie_user/repository/hleper/api_response.dart';

class PassengerRegistrationScreenService {
  Future<APIResponse> onRegisteration(
      {required Map<String, dynamic> body}) async {
    final APIResponse response = await ApiHelper.postData(
        body: body,
        endPoint: "/passenger/register/",
        header: ApiHelper.getApiHeader());
    if (response.error) {
      return response;
    } else {
      // PassengerLoginResModel redData = PassengerLoginResModel.fromJson(response.data);
      return APIResponse(data: "redData", error: false, errorMessage: '');
    }
  }
}
