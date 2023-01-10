import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  init() {
    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.pushReplacementNamed('/contacts');
      //Modular.to.navigate('/contacts');
    });
  }
}
