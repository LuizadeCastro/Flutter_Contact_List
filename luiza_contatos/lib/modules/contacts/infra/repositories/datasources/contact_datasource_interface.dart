import '../models/contact_model.dart';

abstract class IContactDatasource {
  Future<List<ContactModel>> find();
}
