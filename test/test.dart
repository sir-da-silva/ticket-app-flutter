void main() {
  String a = "ab\Bc";

  print(a.length);

  var b = a.replaceFirst(RegExp('\B'), "");

  print(b.length);
}
