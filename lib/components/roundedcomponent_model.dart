import '/components/compon1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'roundedcomponent_widget.dart' show RoundedcomponentWidget;
import 'package:flutter/material.dart';

class RoundedcomponentModel extends FlutterFlowModel<RoundedcomponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for compon1 component.
  late Compon1Model compon1Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    compon1Model = createModel(context, () => Compon1Model());
  }

  @override
  void dispose() {
    compon1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
