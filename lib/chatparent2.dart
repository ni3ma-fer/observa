import 'package:observa/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import 'dart:ui';
import 'aurorisationparent.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import'chatparent3.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'chatparent2model.dart';
export 'chatparent2model.dart';

class Chatparent2Widget extends StatefulWidget {
  const Chatparent2Widget({super.key});

  @override
  State<Chatparent2Widget> createState() => _Chatparent2WidgetState();
}

class _Chatparent2WidgetState extends State<Chatparent2Widget> {
  late Chatparent2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Chatparent2Model());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 770,
        ),
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0, -1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: 100,
                        height: 24,
                        decoration: BoxDecoration(),
                      ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5,
                              sigmaY: 4,
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, -1),
                                      child: Builder(
                                        builder: (context) {
                                          final chat =
                                              _model.chatHistory?.toList() ??
                                                  [];
                                          if (chat.isEmpty) {
                                            return Container(
                                              width: double.infinity,
                                              child: Chatparent3Widget(),
                                            );
                                          }
                                          return ListView.builder(
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              16,
                                              0,
                                              16,
                                            ),
                                            scrollDirection: Axis.vertical,
                                            itemCount: chat.length,
                                            itemBuilder: (context, chatIndex) {
                                              final chatItem = chat[chatIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 12, 12, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    if ((int index) {
                                                      return index % 2 != 0;
                                                    }(chatIndex))
                                                      Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                constraints:
                                                                BoxConstraints(
                                                                  maxWidth: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                        .width >=
                                                                        1170.0) {
                                                                      return 700.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                        .width <=
                                                                        470.0) {
                                                                      return 330.0;
                                                                    } else {
                                                                      return 530.0;
                                                                    }
                                                                  }(),
                                                                ),
                                                                decoration:
                                                                BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primaryBackground,
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                    bottomLeft:
                                                                    Radius.circular(
                                                                        0),
                                                                    bottomRight:
                                                                    Radius.circular(
                                                                        13),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                        13),
                                                                    topRight: Radius
                                                                        .circular(
                                                                        13),
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .alternate,
                                                                    width: 0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      12,
                                                                      8,
                                                                      12,
                                                                      8),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      SelectionArea(
                                                                          child:
                                                                          AutoSizeText(
                                                                            getJsonField(
                                                                              chatItem,
                                                                              r'''$['content']''',
                                                                            ).toString(),
                                                                            style: FlutterFlowTheme.of(context)
                                                                                .bodyMedium
                                                                                .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0,
                                                                              lineHeight: 1.5,
                                                                            ),
                                                                          )),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    0,
                                                                    2,
                                                                    0,
                                                                    0),
                                                                child:
                                                                Container(
                                                                  decoration:
                                                                  BoxDecoration(),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        12,
                                                                        4),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Text(
                                                                           '23/02/2024',
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              letterSpacing: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(
                        0,
                        1,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Tapez quelque chose...',
                          hintStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                          ),
                          errorStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).error,
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF9BA5E0),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16, 24, 70, 24),
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                        ),
                        maxLines: 8,
                        minLines: 1,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Color(0xFF9BA5E0),
                        validator:
                        _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.send_rounded,
                          color: Color(0xFF9BA5E0),
                          size: 30,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: AutorisationparentWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(),
              ),
          ],
        ),
      ),
    );
  }
}
