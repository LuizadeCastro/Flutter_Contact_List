import 'package:flutter_modular/flutter_modular.dart';
import 'package:luiza_contatos/modules/splash/presentation/pages/home_page.dart';

import 'presentation/pages/splash_controller.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => HomePage(
              controller: Modular.get(),
            )),
  ];
}
