import 'package:flutter/material.dart';

import 'package:omni_calculator/theme.dart';

class CalBtn extends StatefulWidget {
  const CalBtn({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<CalBtn> createState() => _CalBtn();
}

class _CalBtn extends State<CalBtn> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Container(
        padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
        margin: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: customColors!.backgroundCompliment,
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Center(
            child: Text(
                widget.text,
                style: const TextStyle(
                    fontSize: 20.0,
                ),
            )
        )
    );
  }
}
