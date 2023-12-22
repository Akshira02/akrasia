import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'prompt_flairs_model.dart';
export 'prompt_flairs_model.dart';

class PromptFlairsWidget extends StatefulWidget {
  const PromptFlairsWidget({super.key});

  @override
  _PromptFlairsWidgetState createState() => _PromptFlairsWidgetState();
}

class _PromptFlairsWidgetState extends State<PromptFlairsWidget> {
  late PromptFlairsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PromptFlairsModel());

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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Cognitive Distortions',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('HistoryPage');
                },
                child: const Icon(
                  Icons.history_rounded,
                  color: Color(0xFF1E1F7C),
                  size: 24.0,
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: const AlignmentDirectional(0.0, 0.0),
            children: [
              Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Screenshot_2023-12-20_at_4.20.06_PM.png',
                        width: 424.0,
                        height: 846.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 294.0,
                          height: 100.0,
                          decoration: const BoxDecoration(
                            color: Color(0x02FFFFFF),
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('TDStorying');
                              },
                              child: Stack(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('TDStorying');
                                      },
                                      text: '\n',
                                      options: FFButtonOptions(
                                        width: 500.0,
                                        height: 95.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFCE59886),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x05EDE2CB),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.89, -0.75),
                                    child: Text(
                                      'Storying',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFFF6F1EE),
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.64),
                                    child: Text(
                                      'You create an elaborate story behind someone\'s response to you, as if you were an omniscient narrator.',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFFF6F5F5),
                                          ),
                                    ),
                                  ),
                                  const Align(
                                    alignment:
                                        AlignmentDirectional(0.95, -0.81),
                                    child: Icon(
                                      Icons.border_color_outlined,
                                      color: Color(0xFFF3F6FB),
                                      size: 30.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 294.0,
                          height: 100.0,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('TDFortuneTelling');
                                  },
                                  text: '\n',
                                  options: FFButtonOptions(
                                    width: 500.0,
                                    height: 95.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFCE59886),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Color(0xFCE59886),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.89, -0.75),
                                child: Text(
                                  'Fortune Telling',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.68),
                                child: Text(
                                  'You make an absolute prediction based on poor, or limited evidence.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFF0F1F4),
                                      ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.94, -0.64),
                                child: Icon(
                                  Icons.auto_awesome,
                                  color: Color(0xFFF3F6FB),
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 294.0,
                          height: 100.0,
                          decoration: const BoxDecoration(
                            color: Color(0x05FFFFFF),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('TDDistortedPerception');
                                  },
                                  text: '\n',
                                  options: FFButtonOptions(
                                    width: 500.0,
                                    height: 95.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFCE59886),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.89, -0.75),
                                child: Text(
                                  'Distorted self-perception',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.33),
                                child: Text(
                                  'You believe your momentary intrusive thoughts are a reflection of your morals & character',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFF0F1F4),
                                      ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.95, -0.71),
                                child: FaIcon(
                                  FontAwesomeIcons.glasses,
                                  color: Color(0xFFF3F6FB),
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 294.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('TDSlipperySlope');
                                  },
                                  text: '\n',
                                  options: FFButtonOptions(
                                    width: 500.0,
                                    height: 95.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFCE59886),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.89, -0.75),
                                child: Text(
                                  'Slippery Slope',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.58),
                                child: Text(
                                  'You exaggerate the negatives of the inciting event and believe it will lead to a chain of catastrophic events.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFF0F1F4),
                                      ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.97, -0.8),
                                child: Icon(
                                  Icons.sledding,
                                  color: Color(0xFFF3F6FB),
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 294.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('TDSlipperySlope');
                                  },
                                  text: '\n',
                                  options: FFButtonOptions(
                                    width: 500.0,
                                    height: 95.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFCE59886),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.89, -0.75),
                                child: Text(
                                  'Straw Man',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.33),
                                child: Text(
                                  'You oversimplify the situation, and form a broad assumption.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFF0F1F4),
                                      ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.96, -0.86),
                                child: Icon(
                                  Icons.man,
                                  color: Color(0xFFF3F6FB),
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 294.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('TDSlipperySlope');
                                  },
                                  text: '\n',
                                  options: FFButtonOptions(
                                    width: 500.0,
                                    height: 95.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFCE59886),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.89, -0.75),
                                child: Text(
                                  'Blame Game',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.33),
                                child: Text(
                                  'You blame either yourself or others entirely for a multi-faceted situation, with many variables out of your control.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFF0F1F4),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 294.0,
                          height: 100.0,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('TDSlipperySlope');
                                  },
                                  text: '\n',
                                  options: FFButtonOptions(
                                    width: 500.0,
                                    height: 95.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFCE59886),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.89, -0.75),
                                child: Text(
                                  'Other',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.33),
                                child: Text(
                                  'None of the flairs above match your description, or you don\'t think your response to the situation was distorted in any way.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFF0F1F4),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 30.0))
                          .around(const SizedBox(height: 30.0)),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional(0.68, 0.34),
                    child: Icon(
                      Icons.group_remove_sharp,
                      color: Color(0xFFF3F6FB),
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
