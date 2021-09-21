import 'package:new_taskee/validations/protocols/field_validation.dart';

class TitleValidation implements FieldValidation {
  @override
  bool call(String? value) {
    return value!.isEmpty ? false : true;
  }
}
