import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'inf_tec_mobile.dart';
import 'inf_tec_desktop.dart';

class InformacionTecPage extends StatelessWidget {
  const InformacionTecPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: InfTecMobile(),
      desktop: InfTecDesktop(),
    );
  }
}