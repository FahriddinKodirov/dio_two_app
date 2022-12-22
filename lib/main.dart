import 'package:dio_two_app/data/api_service/api_service.dart';
import 'package:dio_two_app/data/repositories/mockoapp_repo.dart';
import 'package:dio_two_app/screen/homePage.dart';
import 'package:dio_two_app/view_model/mockoapp_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=>MockoappViewModel(mockoappRepo: MockoappRepo(apiService: ApiService())),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
