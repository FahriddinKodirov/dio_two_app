
import 'package:dio_two_app/data/api_service/api_service.dart';
import 'package:dio_two_app/data/model/mockoapp_model.dart';
import 'package:dio_two_app/data/model/my_response/my_response.dart';
import 'package:dio_two_app/data/repositories/mockoapp_repo.dart';
import 'package:flutter/cupertino.dart';

class MockoappViewModel extends ChangeNotifier {
  MockoappViewModel({required this.mockoappRepo}){
    fetchMockoapp();
  }

  MockoappModel? mockoapp;

  String errorForUI = "";

  MockoappRepo mockoappRepo;

  fetchMockoapp() async {
    MyResponse myResponse = await mockoappRepo.getAllFields();
    if (myResponse.error.isEmpty) {
      mockoapp = myResponse.data as MockoappModel;
    } else {
      errorForUI = myResponse.error;
    }
    notifyListeners();
  }
}