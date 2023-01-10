import '../../domain/entities/contacts_entity.dart';
import '../../domain/repositories/contact_repository_interface.dart';
import 'datasources/contact_datasource_interface.dart';

class ContactRepository implements IContactRepository {
  final IContactDatasource datasource;

  ContactRepository({required this.datasource});

  @override
  Future<List<ContactEntity>> find() async {
    final result = await datasource.find();

    return result
        .map((element) => ContactEntity(
              age: element.age,
              email: element.email,
              index: element.index,
              name: element.name,
              picture: element.picture,
            ))
        .toList();
  }
}
