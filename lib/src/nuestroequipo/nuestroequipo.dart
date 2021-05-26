import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'nuestroeq_desktop.dart';
import 'nuestroeq_mobile.dart';

class Nuestroequipo extends StatelessWidget {
  const Nuestroequipo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NuestroEqMobile(),
      desktop: NuestroEqDesktop(),

    );
  }

}