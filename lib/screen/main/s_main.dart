import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

import '../../common/common.dart';
import 'w_menu_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final wsUrl = Uri.parse("wss://stream.binance.com:9443/ws/btcusdt@trade");
  late final channel = IOWebSocketChannel.connect(wsUrl);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      body: Container(
        color: context.appColors.seedColor.getMaterialColorValues[200],
        child: SafeArea(
          child: Placeholder(),
        ),
      ),
    );
  }
}
