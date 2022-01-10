import 'package:flutter/material.dart';
import 'package:portfolio_b_w/app/modules/home/pages/components/web_home_body.dart';
import 'package:portfolio_b_w/app/modules/home/store/home_store.dart';
import 'package:provider/provider.dart';

import 'components/mobile_home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final store = Provider.of<HomeStore>(context);

    return LayoutBuilder(builder: (context, constraints) {
      // ? Web breakpoint
      if (constraints.maxWidth > 1080) {
        return WebHomeBody(
          size: size,
          store: store,
        );
      } else {
        return MobileHomeBody(
          size: size,
          store: store,
        );
      }
    });
  }
}
