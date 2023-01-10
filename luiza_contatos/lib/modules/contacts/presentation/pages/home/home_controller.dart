import 'package:mobx/mobx.dart';

import '../../../domain/entities/contacts_entity.dart';
import '../../../domain/usecases/get_contacts_usecase.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final GetContactUsecase getContactUsecase;

  _HomeControllerBase({required this.getContactUsecase});

  @observable
  List<ContactEntity> contatos = [];

  @action
  init() async {
    await Future.delayed(const Duration(seconds: 1));
    contatos = await getContactUsecase();
  }
}
