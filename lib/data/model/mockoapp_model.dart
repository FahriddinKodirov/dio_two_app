
import 'package:dio_two_app/data/model/fields_Model.dart';

class MockoappModel {
  List<FieldsModel> fields;

  MockoappModel({
    required this.fields,
  });

  factory MockoappModel.fromJson(Map<String, dynamic> jsonData) {
    return MockoappModel(
      fields:
          (jsonData['fields'] as List).map((e) => FieldsModel.fromJson(e)).toList(),
    );
  }
}