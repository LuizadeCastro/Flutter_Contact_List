import 'package:dio/dio.dart';
import 'package:luiza_contatos/modules/contacts/infra/repositories/models/contact_model.dart';

import '../repositories/datasources/contact_datasource_interface.dart';

class ContactDatasource extends IContactDatasource {
  final Dio http;

  ContactDatasource({
    required this.http,
  });

  @override
  Future<List<ContactModel>> find() async {
    final response = await http.get('luiza/contacts');
    final result =
        (response.data as List).map((e) => ContactModel.fromJson(e)).toList();

    return result;
  }
}
