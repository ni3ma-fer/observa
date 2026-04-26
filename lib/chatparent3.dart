import 'package:flutterflow_ui/flutterflow_ui.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'chatparent3model.dart';
export 'chatparent3model.dart';

class Chatparent3Widget extends StatefulWidget {
  const Chatparent3Widget({super.key});

  @override
  State<Chatparent3Widget> createState() => _Chatparent3WidgetState();
}

class _Chatparent3WidgetState extends State<Chatparent3Widget> {
  late Chatparent3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Chatparent3Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
