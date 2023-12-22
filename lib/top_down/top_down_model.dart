import '/components/roundedcomponent_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_down_widget.dart' show TopDownWidget;
import 'package:flutter/material.dart';

class TopDownModel extends FlutterFlowModel<TopDownWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for roundedcomponent component.
  late RoundedcomponentModel roundedcomponentModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for roundedcomponent component.
  late RoundedcomponentModel roundedcomponentModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    roundedcomponentModel1 =
        createModel(context, () => RoundedcomponentModel());
    roundedcomponentModel2 =
        createModel(context, () => RoundedcomponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    roundedcomponentModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    roundedcomponentModel2.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
