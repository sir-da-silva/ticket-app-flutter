final chiffreRegex = RegExp(r"^[0-9]+$");
final dateRegex = RegExp(r"^\d{4}-\d{2}-\d{2}$");

bool Function(String) isEmail = (String str) {
  final emailRegex = RegExp(
    r"^(?!.*\.\.)[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z]{2,63}$",
  );
  return emailRegex.hasMatch(str.trim());
};

bool Function(String) isName = (String str) {
  final nomRegex = RegExp(r"^(?!.*(--|''))([A-Za-zÀ-ÖØ-öø-ÿ]+(?:[ '-][A-Za-zÀ-ÖØ-öø-ÿ]+)*)$");
  return nomRegex.hasMatch(str.trim());
};

bool Function(String) isPhoneNumber = (String str) {
  final phoneRegex = RegExp(r"^[1-9]\d{1,14}$");
  return phoneRegex.hasMatch(str.trim());
};

bool Function(String) isFacebookUsername = (String str) {
  final facebookUsernameRegex = RegExp(r"^[A-Za-z0-9](?:[A-Za-z0-9._]*[A-Za-z0-9])?$");
  return facebookUsernameRegex.hasMatch(str.trim());
};

bool Function(String) isInstagramUsername = (String str) {
  final facebookUsernameRegex = RegExp(r"^[A-Za-z0-9._]{1,30}$");
  return facebookUsernameRegex.hasMatch(str.trim());
};

bool Function(String) isTikTokUsername = (String str) {
  final facebookUsernameRegex = RegExp(r"^[A-Za-z0-9][A-Za-z0-9._]{1,23}$");
  return facebookUsernameRegex.hasMatch(str.trim());
};

bool Function(String) isValidPassword = (String str) {
  final passwordRegex = RegExp(r"^.{6,}$");
  return passwordRegex.hasMatch(str.trim());
};

bool Function(String) isStrongPassword = (String str) {
  final strongPasswordRegex = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$");
  return strongPasswordRegex.hasMatch(str.trim());
};
