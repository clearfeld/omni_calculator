import 'package:flutter/material.dart';

import 'package:omni_calculator/theme.dart';

class ResultRow extends StatefulWidget {
  const ResultRow({super.key});

  @override
  State<ResultRow> createState() => _ResultRow();
}

class _ResultRow extends State<ResultRow> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return const Flexible(
      child: Row(
        children: [
          Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: <Widget>[
                    Text("0"),
                    Text("0",
                    style: TextStyle(
                        fontSize: 32.0,
                    )),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
