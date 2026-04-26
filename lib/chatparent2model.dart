
import 'dart:ui';
import 'chatparent2.dart' show Chatparent2Widget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
class Chatparent2Model extends FlutterFlowModel<Chatparent2Widget> {
  ///  Local state fields for this component.

  dynamic chatHistory;

  bool aiResponding = false;

  String inputContent = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
