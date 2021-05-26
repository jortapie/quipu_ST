import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'consultas_desktop.dart';
import 'consultas_mobile.dart';

class ConsultastecnicasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ConsultasMobile(),
      desktop: ConsultasDesktop(),
    );
  }
}