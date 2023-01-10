import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;
  const HomePage({
    super.key,
    required this.controller,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(),
      ),
      body: Column(
        children: [
          Observer(
            builder: (context) {
              if (widget.controller.contatos.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }

              return Expanded(
                child: ListView.builder(
                  itemCount: widget.controller.contatos.length,
                  itemBuilder: ((context, index) {
                    final contact = widget.controller.contatos[index];
                    return ListTile(
                      title: Text(contact.name),
                      onTap: () {
                        Modular.to.pushNamed(
                          '/contacts/details/${contact.index}',
                          arguments: contact,
                        );
                      },
                    );
                  }),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
