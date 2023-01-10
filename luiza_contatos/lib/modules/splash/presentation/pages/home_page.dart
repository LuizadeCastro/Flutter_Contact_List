import 'package:flutter/material.dart';
import 'package:luiza_contatos/modules/splash/presentation/pages/splash_controller.dart';

class HomePage extends StatefulWidget {
  final SplashController controller;
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
    super.initState();
    widget.controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
