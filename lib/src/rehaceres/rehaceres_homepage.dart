import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'rehacere_mobile.dart';
import 'rehaceres_desktop.dart';

class RehaceresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: RehaceresMobile(),
      desktop: RehaceresDesktop(),
    );
  }
}