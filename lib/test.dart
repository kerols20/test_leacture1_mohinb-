class User {
  String name;

  // private constructor
  User._(this.name);

  static User? _instance;
  static User getinstance() {
    if (_instance == null) {
      _instance = User._('monib');
    }
    return _instance!;
  }
}



