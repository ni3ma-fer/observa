

import 'parentccc.dart' show ParentcccWidget;
import 'package:flutter/material.dart';
import'compteparentmodel.dart';

import 'package:flutterflow_ui/flutterflow_ui.dart';
class ParentcccModel extends FlutterFlowModel<ParentcccWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for compteparent component.
  late CompteparentModel compteparentModel;

  @override
  void initState(BuildContext context) {
    compteparentModel = createModel(context, () => CompteparentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    compteparentModel.dispose();
  }
}
