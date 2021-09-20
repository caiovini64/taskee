import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:new_taskee/validations/protocols/field_validation.dart';
import 'package:new_taskee/validations/validators/title_validation.dart';

void main() {
  late String title;
  late FieldValidation validation;

  setUp(() {
    title = faker.internet.random.string(10);
    validation = TitleValidation();
  });

  test('should return true when title is not empty', () {
    final result = validation.validate(title);
    expect(result, true);
  });
}
