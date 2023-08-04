import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var number = <int>[];

  GlobalKey<FormState> key = GlobalKey<FormState>();
  var checkBoxValue = false;
  var switchValue = false;
  var sliderValue = 0.3;
  var radio = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Form(
          key: key,
          child: Column(
            children: [
              Checkbox(
                value: checkBoxValue,
                onChanged: (value) => setState(() => checkBoxValue = value!),
              ),
              Switch(
                value: switchValue,
                onChanged: (value) => setState(() => switchValue = value),
              ),
              Slider(
                min: 0,
                max: 10,
                value: sliderValue,
                onChanged: (value) => setState(() => sliderValue = value),
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: radio,
                    onChanged: (value) => setState(() => radio = value!),
                  ),
                  const Text('Option 1'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: radio,
                    onChanged: (value) => setState(() => radio = value!),
                  ),
                  const Text('Option 2')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: radio,
                    onChanged: (value) => setState(() {
                      radio = value!;
                    }),
                  ),
                  const Text('Option 3')
                ],
              ),
            ],
          )),
    );
  }
}
