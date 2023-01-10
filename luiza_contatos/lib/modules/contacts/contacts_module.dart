import 'package:flutter_modular/flutter_modular.dart';
import 'package:luiza_contatos/modules/contacts/domain/usecases/get_contacts_usecase.dart';
import 'package:luiza_contatos/modules/contacts/infra/datasources/contact_datasource.dart';
import 'package:luiza_contatos/modules/contacts/presentation/pages/home/home_controller.dart';

import 'infra/repositories/contatcs_repository.dart';
import 'presentation/pages/details/details_page.dart';
import 'presentation/pages/home/home_page.dart';

class ContactsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ContactDatasource(http: i())),
    Bind.lazySingleton((i) => ContactRepository(datasource: i())),
    Bind.lazySingleton((i) => GetContactUsecase(repository: i())),
    Bind.lazySingleton((i) => HomeController(getContactUsecase: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => HomePage(
              controller: Modular.get(),
            )),
    ChildRoute(
      '/details/:id',
      child: (_, args) => DetailsPage(
        contact: args.data,
        id: args.params['id'],
      ),
    ),
  ];
}
