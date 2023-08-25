import 'package:flutter/material.dart';

import 'package:omni_calculator/calculator_standard/cal_btn.dart';
import 'package:omni_calculator/calculator_standard/history_and_memory.dart';
import 'package:omni_calculator/calculator_standard/result_row.dart';
import 'package:omni_calculator/theme.dart';

class StandardCalculator extends StatefulWidget {
  const StandardCalculator({super.key});

  @override
  State<StandardCalculator> createState() => _StandardCalculator();
}

class _StandardCalculator extends State<StandardCalculator> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return const Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              ResultRow(),
              //
              // Flexible(
              //     child: ,
              // ),

              Flexible(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CalBtn(text: "MC"),
                    ),
                    Expanded(
                      child: CalBtn(text: "MR"),
                    ),
                    Expanded(
                      child: CalBtn(text: "M+"),
                    ),
                    Expanded(
                      child: CalBtn(text: "M-"),
                    ),
                    Expanded(
                      child: CalBtn(text: "MS"),
                    ),
                  ],
                ),
              ),

              Flexible(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CalBtn(text: "%"),
                    ),
                    Expanded(
                      child: CalBtn(text: "CE"),
                    ),
                    Expanded(
                      child: CalBtn(text: "C"),
                    ),
                    Expanded(
                      child: CalBtn(text: "DEL"),
                    ),
                  ],
                ),
              ),

              Flexible(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CalBtn(text: "1/x"),
                    ),
                    Expanded(
                      child: CalBtn(text: "^2"),
                    ),
                    Expanded(
                      child: CalBtn(text: "Sq2"),
                    ),
                    Expanded(
                      child: CalBtn(text: "/"),
                    ),
                  ],
                ),
              ),

                Flexible(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CalBtn(text: "7"),
                      ),
                      Expanded(
                        child: CalBtn(text: "8"),
                      ),
                      Expanded(
                        child: CalBtn(text: "9"),
                      ),
                      Expanded(
                        child: CalBtn(text: "X"),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CalBtn(text: "4"),
                      ),
                      Expanded(
                        child: CalBtn(text: "5"),
                      ),
                      Expanded(
                        child: CalBtn(text: "6"),
                      ),
                      Expanded(
                        child: CalBtn(text: "-"),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CalBtn(text: "1"),
                      ),
                      Expanded(
                        child: CalBtn(text: "2"),
                      ),
                      Expanded(
                        child: CalBtn(text: "3"),
                      ),
                      Expanded(
                        child: CalBtn(text: "+"),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: CalBtn(text: "+/-"),
                      ),
                      Expanded(
                        child: CalBtn(text: "0"),
                      ),
                      Expanded(
                        child: CalBtn(text: "."),
                      ),
                      Expanded(
                        child: CalBtn(text: "="),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),

        Expanded(
          child: HistoryAndMemory()
        ),

      ],
    );
  }
}
