import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_model.dart';
export 'logo_model.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  late LogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Theme.of(context).brightness == Brightness.dark
          ? 'assets/images/logo_newforceDark_alt@3x.png'
          : 'assets/images/logo_newforceLight_alt@3x.png',
      width: 170.0,
      height: 44.0,
      fit: BoxFit.fitWidth,
    );
  }
}
