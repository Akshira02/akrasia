import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 't_d_distorted_perception_model.dart';
export 't_d_distorted_perception_model.dart';

class TDDistortedPerceptionWidget extends StatefulWidget {
  const TDDistortedPerceptionWidget({super.key});

  @override
  _TDDistortedPerceptionWidgetState createState() =>
      _TDDistortedPerceptionWidgetState();
}

class _TDDistortedPerceptionWidgetState
    extends State<TDDistortedPerceptionWidget> {
  late TDDistortedPerceptionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TDDistortedPerceptionModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFF66E4E),
          automaticallyImplyLeading: false,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/akshira_person_looking_at_evil_twin_in_mirror_simplistic_cartoo_73e210ae-ecd8-45a7-9cfe-17df14c1f9b1.png',
                        width: 409.0,
                        height: 789.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        'Are your thoughts evidence-based reflections of your character, or are they just thoughts that can be intrusive and uninvited?',
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    onFieldSubmitted: (_) async {
                      await JournalRecord.collection.doc().set({
                        ...createJournalRecordData(
                          title: _model.textController1.text,
                          answer: _model.textController2.text,
                          user: currentUserEmail,
                        ),
                        ...mapToFirestore(
                          {
                            'createdDate': FieldValue.serverTimestamp(),
                          },
                        ),
                      });

                      context.pushNamed('PromptFlairs');
                    },
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintText: 'Journal Title',
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    maxLines: 2,
                    minLines: 1,
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        'How would you view someone else who had a similar intrusive thought? Would you judge their entire character based on it?\n',
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintText: 'Today I encountered...',
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    maxLines: 16,
                    minLines: 6,
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await JournalRecord.collection.doc().set({
                        ...createJournalRecordData(
                          answer: _model.textController2.text,
                          user: currentUserEmail,
                          title: _model.textController1.text,
                          type: 'DISTORTEDPERCEPTION',
                        ),
                        ...mapToFirestore(
                          {
                            'createdDate': FieldValue.serverTimestamp(),
                          },
                        ),
                      });

                      context.pushNamed('PromptFlairs');
                    },
                    text: 'Submit\n',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ]
                    .divide(const SizedBox(height: 16.0))
                    .addToStart(const SizedBox(height: 12.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
