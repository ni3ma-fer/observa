import 'package:observa/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';



class ParentparametreWidget extends StatefulWidget {
  const ParentparametreWidget({Key? key}) : super(key: key);
  @override
  State<ParentparametreWidget> createState() => _ParentparametreWidgetState();
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dark and Light Mode',
          theme: ThemeData(primarySwatch: Colors.blue),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          home: ParentparametreWidget(),
        );
      },
    );
  }
}

class _ParentparametreWidgetState extends State<ParentparametreWidget> {
  
  String _selectedLanguage = 'Français';

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          title: Text('Paramètres',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22,
                    letterSpacing: 0,
                  )),
          centerTitle: false,
          elevation: 0,
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}

