

import 'package:dio_two_app/data/api_service/api_service.dart';
import 'package:dio_two_app/data/model/my_response/my_response.dart';

class MockoappRepo{
  MockoappRepo( {required this.apiService});
  ApiService apiService;

  Future<MyResponse> getAllFields()=>apiService.getSingleMockoappById();
}