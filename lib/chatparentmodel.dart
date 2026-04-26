

import 'chatparent.dart' show ChatparentWidget;
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'chatparent4model.dart';

class ChatparentModel extends FlutterFlowModel<ChatparentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for chatparent4 component.
  late Chatparent4Model chatparent4Model;

  @override
  void initState(BuildContext context) {
    chatparent4Model = createModel(context, () => Chatparent4Model());
  }

  @override
  void dispose() {
    chatparent4Model.dispose();
  }
}
