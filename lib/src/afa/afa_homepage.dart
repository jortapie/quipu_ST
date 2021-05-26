import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'afa_desktop.dart';
import 'afa_mobile.dart';

class AFAPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AfaMobile(),
      desktop: AfaDesktop(),
    );
    }
}