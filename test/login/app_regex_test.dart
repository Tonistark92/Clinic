import 'package:clinic/core/helpers/app_regex.dart';
import 'package:test/test.dart';

void main() {
  group('Test The Validations For Email', () {
    test('isEmailValidReturnsTrue', () {
      const email = "pIqFP@example.com";
      expect(AppRegex.isEmailValid(email), true);
    });
    test('isEmailValidReturnsfalse', () {
      const email = "pIqFPexample.com";
      expect(AppRegex.isEmailValid(email), false,
          reason: "don't have @ symbol");
    });
    test('isEmailValidReturnsfalse', () {
      const email = "pIqFP@examplecom";
      expect(AppRegex.isEmailValid(email), false,
          reason: "don't have . symbol");
    });
    test('isEmailValidReturnsfalse', () {
      const email = "pIqFP@example.";
      expect(AppRegex.isEmailValid(email), false,
          reason: "don't have domain name");
    });
    test('isEmailValidReturnsfalse', () {
      const email = "@example.com";
      expect(AppRegex.isEmailValid(email), false,
          reason: "don't have email name");
    });
  });
  group('Test The Validations For Password', () {
    test('isPasswordhasLowerCaseReturnsTrue', () {
      const password = "pPssS";
      expect(AppRegex.hasLowerCase(password), true);
    });
    test('isPasswordHasLowerCaseReturnsFalse', () {
      const password = "PSS";
      expect(AppRegex.hasLowerCase(password), false,
          reason: "needs at least 1 lowercase");
    });

    test('isPasswordhasUpperCaseReturnsTrue', () {
      const password = "pPssS";
      expect(AppRegex.hasLowerCase(password), true);
    });
    test('isPasswordHasUpperCaseReturnsFalse', () {
      const password = "pss";
      expect(AppRegex.hasUpperCase(password), false,
          reason: "needs at least 1 uppercase");
    });

    test('isPasswordhasNumberReturnsTrue', () {
      const password = "pPssS123";
      expect(AppRegex.hasNumber(password), true);
    });
    test('isPasswordHasNumberReturnsFalse', () {
      const password = "PSS";
      expect(AppRegex.hasNumber(password), false,
          reason: "needs at least 1 number");
    });
    test('isPasswordhasSpecilaCharacterReturnsTrue', () {
      const password = "pPssS#";
      expect(AppRegex.hasLowerCase(password), true);
    });
    test('isPasswordhasSpecilaCharacterReturnsfalse', () {
      const password = "PSS";
      expect(AppRegex.hasLowerCase(password), false,
          reason: "needs at least 1 specilaCharacter");
    });
    test('isPasswordhasMoreThan8CharactersReturnsTrue', () {
      const password = "pPssSiiassadlaa";
      expect(AppRegex.hasLowerCase(password), true);
    });
    test('isPasswordhasMoreThan8CharactersReturnsfalse', () {
      const password = "pPss";
      expect(AppRegex.hasMinLength(password), false,
          reason: "needs to be at least 8 characters");
    });
    test('isPasswordHasAllValidationsReturnsTrue', () {
      const password = "Sesscur3P@";
      expect(AppRegex.isPasswordValid(password), true);
    });
  });
}
