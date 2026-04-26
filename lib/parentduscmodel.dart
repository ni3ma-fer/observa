
import 'parentdusc.dart' show ParentduscWidget;
import 'package:flutter/material.dart';
import 'chatparent2model.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'parentdusc.dart';
class ParentduscModel extends FlutterFlowModel<Parentdusc> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for chatparent2 component.
  late Chatparent2Model chatparent2Model;

  @override
  void initState(BuildContext context) {
    chatparent2Model = createModel(context, () => Chatparent2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatparent2Model.dispose();
  }
}
