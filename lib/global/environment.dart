import 'dart:io';

class Enviroment {
  static String apiUrl =
      Platform.isAndroid ? 'http://10.0.2.2:8081' : 'http://localhost:8081';

  static String socketUrl =
      Platform.isAndroid ? 'http://10.0.2.2:8081' : 'http://localhost:8081';
}
