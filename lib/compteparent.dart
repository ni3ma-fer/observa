
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'compteparentmodel.dart';
export 'compteparentmodel.dart';

class CompteparentWidget extends StatefulWidget {
  const CompteparentWidget({
    super.key,
    String? title,
    String? confirmButtonText,
    required this.navigateAction,
  })  : this.title = title ?? 'Edit Profile',
        this.confirmButtonText = confirmButtonText ?? 'Save Changes';

  final String title;
  final String confirmButtonText;
  final Future Function()? navigateAction;

  @override
  State<CompteparentWidget> createState() => _CompteparentWidgetState();
}

class _CompteparentWidgetState extends State<CompteparentWidget> {
  late CompteparentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompteparentModel());

    _model.yourNameTextController ??= TextEditingController(text: 'user');
    _model.yourNameFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
            child: TextFormField(
              controller: _model.yourNameTextController,
              focusNode: _model.yourNameFocusNode,
              autofillHints: [AutofillHints.name],
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Full Name',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0,
                ),
                hintText: 'Your full name...',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0,
                ),
                errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).error,
                  letterSpacing: 0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF9BA5E0),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                letterSpacing: 0,
              ),
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator:
              _model.yourNameTextControllerValidator.asValidator(context),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button-Login pressed ...');
                },
                text: widget.confirmButtonText,
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Color(0xFF9BA5E0),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: FlutterFlowTheme.of(context).info,
                    letterSpacing: 0,
                  ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
