import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio_b_w/app/modules/home/store/home_store.dart';
import 'package:portfolio_b_w/constants/constants.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeStore>(
          create: (_) => HomeStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Portfólio - Emanuel Santos - Desenvolvedor Mobile',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: kPrimaryColor),
      ).modular(),
    );
  }
}
