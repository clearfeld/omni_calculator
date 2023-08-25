import 'package:flutter/material.dart';
import 'package:omni_calculator/theme.dart';

enum EViews { history, memory }

class HistoryAndMemory extends StatefulWidget {
  const HistoryAndMemory({super.key});

  @override
  State<HistoryAndMemory> createState() => _HistoryAndMemory();
}

class _HistoryAndMemory extends State<HistoryAndMemory> {
  EViews view = EViews.history;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          TextButton(
            onPressed: () => {
              setState(() {
                view = EViews.history;
              })
            },
            child: const Text("History "),
          ),
          TextButton(
            onPressed: () => {
              setState(() {
                view = EViews.memory;
              })
            },
            child: const Text("Memory"),
          ),
        ]),
        if (view == EViews.history) ...[
          const Expanded(
            child: Text("There's no history yet"),
          ),
        ] else if (view == EViews.memory) ...[
          const Expanded(
            child: Text("There's no memory yet"),
          ),
        ],
        Align(
          alignment: Alignment.bottomRight,
          child: Container(height: 24.0, margin: const EdgeInsets.all(8.0), child: const Text("CLEAR")),
        )
      ],
    );
  }
}
