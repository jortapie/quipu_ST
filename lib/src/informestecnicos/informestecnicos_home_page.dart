import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'informes_mobile.dart';
import 'informes_desktop.dart';


class InformestecnicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: InformesMobile(),
      desktop: InformesDesktop(),
    );
  }
}