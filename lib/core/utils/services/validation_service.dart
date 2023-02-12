import 'package:fleasy/fleasy.dart';

class ValidationService {
  static String? validateUserName(String? name) {
    return name!.isEmpty ? 'please write your full name' : null;
  }

  static String? validatePhoneNumber(String? number) {
    if (number!.isEmpty) return 'please write number';
    if (number.startsWith('0')) return 'write your number without 0';

    return null;
  }

  static String? validatePassword(String? password) {
    if(password!.isEmpty)
      return 'please write password';

      if (!password.isMediumPassword) {
        return 'Password must contain at least 8 characters ,one uppercase letter, one lowercase letter and one number. ';
      }
    return null;
  }

  static String? validateConfirmPassword(
      {required String? confirmPassword, required String password}) {
    if (confirmPassword!.isEmpty) {
      return 'please write confirmPassword';
    }
    if (confirmPassword != password)
      return 'the confirm password is not equal to the password';

    return null;
  }
}
