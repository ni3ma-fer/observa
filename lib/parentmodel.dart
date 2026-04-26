
import 'parent.dart' show MyApp;
import 'package:flutter/material.dart';
import 'menumodel.dart';
export 'menumodel.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class ParentModel extends FlutterFlowModel<MyApp> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
  }
}
