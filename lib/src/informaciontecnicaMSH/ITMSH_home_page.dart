import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'IT_MSH_Desktop.dart';
import 'IT_MSH_Mobile.dart';

class InformacionTecnicaMSHPage extends StatelessWidget {
  const InformacionTecnicaMSHPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: InformacionTecnicaMSHMobile(),
      desktop: InformacionTecnicaMSHDesktop(),
    );
  }
}