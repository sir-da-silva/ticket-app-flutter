void main() {
  String a = "abBc";

  print(a.length);

  var b = a.replaceFirst(RegExp('B'), "");

  print(b.length);
}
