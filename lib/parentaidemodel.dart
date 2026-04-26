
import 'parentaide.dart' show ParentaideWidget;
import 'package:flutter/material.dart';

import 'package:flutterflow_ui/flutterflow_ui.dart';

class ParentaideModel extends FlutterFlowModel<ParentaideWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
