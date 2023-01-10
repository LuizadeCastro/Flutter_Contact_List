import 'package:luiza_contatos/modules/contacts/domain/entities/contacts_entity.dart';

abstract class IContactRepository {
  Future<List<ContactEntity>> find();
}
