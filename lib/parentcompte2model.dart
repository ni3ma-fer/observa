
import 'parentcompte2.dart' show Parentcompt2Widget;
import 'package:flutter/material.dart';
import 'compteparent2model.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class Parentcompte2Model extends FlutterFlowModel<Parentcompt2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for compteparent2 component.
  late Compteparent2Model compteparent2Model;

  @override
  void initState(BuildContext context) {
    compteparent2Model = createModel(context, () => Compteparent2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    compteparent2Model.dispose();
  }
}
