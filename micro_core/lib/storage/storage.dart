import 'package:hive/hive.dart';

class User {
  @HiveField(0)
  String? _user;

  @HiveField(1)
  String? _password;

  User({String? user, String? password}) {
    _user = user;
    _password = password;
  }

  String? getUser() {
    return _user;
  }

  String? getPassword() {
    return _password;
  }
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 0;

  @override
  User read(BinaryReader reader) {
    return User(user: reader.read(), password: reader.read());
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.write(obj._user);
    writer.write(obj._password);
  }
}

class Storage {
  Future<void> save(String usuario, String senha) async {
    var storage = await Hive.openBox('storage');
    User user = User(user: usuario, password: senha);
    await storage.put('user', user);
  }

  Future<User?> get() async {
    var storage = await Hive.openBox('storage');
    try {
      return storage.get('user');
    } catch (e) {
      // Lidar com possíveis erros ao acessar o HiveBox
      return User(user: 'N/A', password: 'N/A');
    }
  }
}
