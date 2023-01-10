import 'package:flutter/material.dart';

import '../../../domain/entities/contacts_entity.dart';

class DetailsPage extends StatefulWidget {
  final String id;
  final ContactEntity contact;
  const DetailsPage({
    super.key,
    required this.id,
    required this.contact,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#${widget.id}'),
      ),
      body: Column(
        children: [
          Text(widget.contact.name),
        ],
      ),
    );
  }
}
