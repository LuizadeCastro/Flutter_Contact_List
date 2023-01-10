import '../entities/contacts_entity.dart';
import '../repositories/contact_repository_interface.dart';

class GetContactUsecase {
  final IContactRepository repository;

  GetContactUsecase({required this.repository});

  Future<List<ContactEntity>> call() async {
    final result = await repository.find();
    if (result.isEmpty) {
      throw Exception('No contacts found');
    }

    return result;
  }
}
