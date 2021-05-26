import 'package:flutter/material.dart';

import 'evaluaciones_desktop.dart';
import 'evaluaciones_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class EvaluacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: EvaluacionesMobile(),
      desktop: EvaluacionesDesktop(),
    );
  }
}