
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'chatparentmodel.dart';
export 'chatparentmodel.dart';
import'chatparent4.dart';

class ChatparentWidget extends StatefulWidget {
  const ChatparentWidget({super.key});

  @override
  State<ChatparentWidget> createState() => _ChatparentWidgetState();
}

class _ChatparentWidgetState extends State<ChatparentWidget> {
  late ChatparentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatparentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xB20B191E),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Container(
                width: double.infinity,
                height: 858,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 44,
                          icon: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'Kara chafia ',
                          style:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16,
                            letterSpacing: 0,
                          ),
                        ),
                      ].divide(SizedBox(width: 5)),
                    ),
                    Divider(
                      height: 4,
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    Container(
                      width: double.infinity,
                      height: 730,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.chatparent4Model,
                        updateCallback: () => setState(() {}),
                        child: Chatparent4(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
