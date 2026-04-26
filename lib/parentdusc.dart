
import 'package:flutter/material.dart';

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'chatparent2.dart';
import 'parentduscmodel.dart';
export 'parentduscmodel.dart';

class Parentdusc extends StatefulWidget {
  const Parentdusc({super.key});

  @override
  State<Parentdusc> createState() => _ParentduscWidgetState();
}

class _ParentduscWidgetState extends State<Parentdusc> {
  late ParentduscModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParentduscModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF9BA5E0),
              size: 30,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Kara chafia',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).primaryText,
              fontSize: 22,
              letterSpacing: 0,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: wrapWithModel(
                model: _model.chatparent2Model,
                updateCallback: () => setState(() {}),
                child: Chatparent2Widget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
