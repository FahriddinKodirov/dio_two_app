import 'package:dio/dio.dart';
import 'package:dio_two_app/data/api_service/api_client.dart';
import 'package:dio_two_app/data/model/mockoapp_model.dart';
import 'package:dio_two_app/data/model/my_response/my_response.dart';


class ApiService  extends ApiClient{

  Future<MyResponse> getSingleMockoappById() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get("${dio.options.baseUrl}/dynamic");
      if (response.statusCode == 200) {
        myResponse.data = MockoappModel.fromJson(response.data);
      }
    } catch (err) {
      myResponse.error = err.toString();
    }

    return myResponse;
  }

}