
import 'parentparametre.dart' show ParentparametreWidget;
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class ParentparametreModel extends FlutterFlowModel<ParentparametreWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for switc component.


  @override
  void initState(BuildContext context) {

  }

  @override
  void dispose() {
    unfocusNode.dispose();

  }
}
