void outer(String name, String id) {
  String inner() {
    var parts = name.split(' ');
    var first = parts[0];
    var last = parts[1];
    return 'Hello Agent ${last[0]}.$first your id is $id';
  }

  print(inner());
}
