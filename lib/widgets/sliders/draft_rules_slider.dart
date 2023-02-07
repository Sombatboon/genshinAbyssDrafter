import 'package:flutter/material.dart';
import '../../main_view/pages/main_view_dashboard/pages/set_draft_rules_page/set_draft_rules_files/set_draft_rules_var.dart';

class DraftRulesSlider extends StatefulWidget {
  final String varIndex;
  final double max;
  final double min;
  final double divisions;
  final Function refreshParent;
  const DraftRulesSlider({super.key, required this.varIndex, required this.max, required this.min, required this.divisions, required this.refreshParent});

  @override
  State<DraftRulesSlider> createState() => _DraftRulesSliderState();
}

class _DraftRulesSliderState extends State<DraftRulesSlider> {
  double draftRulesVariable = 0;

  @override
  void initState() {
    draftRulesVariable = SetDraftRulesVar().getVarByIndex(widget.varIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Slider(
      value: draftRulesVariable,
      max: widget.max,
      min: widget.min,
      divisions: int.tryParse(widget.divisions.toString()),
      onChanged: (double value) {
        setState(() {
          draftRulesVariable = value;
          SetDraftRulesVar().setVarByIndex(widget.varIndex, value);
          widget.refreshParent();
        });
      },
    );
  }
}