import '/components/compon1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'roundedcomponent_model.dart';
export 'roundedcomponent_model.dart';

class RoundedcomponentWidget extends StatefulWidget {
  const RoundedcomponentWidget({super.key});

  @override
  _RoundedcomponentWidgetState createState() => _RoundedcomponentWidgetState();
}

class _RoundedcomponentWidgetState extends State<RoundedcomponentWidget> {
  late RoundedcomponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoundedcomponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return wrapWithModel(
      model: _model.compon1Model,
      updateCallback: () => setState(() {}),
      child: const Compon1Widget(),
    );
  }
}
