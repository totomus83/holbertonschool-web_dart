class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String? get password => _password;

  set password(String? value) {
    _password = value;
  }

  bool isValid() {
    final pwd = _password ?? '';
    if (pwd.length < 8 || pwd.length > 16) {
      return false;
    }

    bool hasUpper = pwd.contains(RegExp(r'[A-Z]'));
    bool hasLower = pwd.contains(RegExp(r'[a-z]'));
    bool hasDigit = pwd.contains(RegExp(r'[0-9]'));

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() {
    return "Your Password is: ${_password ?? ''}";
  }
}
