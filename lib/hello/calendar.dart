import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  Future<void> selectDate(context) async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2017),
        lastDate: DateTime(2021));

    print(dateTime);
  }

  Future<void> selectTime(context) async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    print(time);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => selectDate(context),
            child: const Text('Test Date picker')),
        Container(
          height: 50,
        ),
        ElevatedButton(
            onPressed: () => selectTime(context),
            child: const Text('Test Time picker'))
      ],
    );
  }
}
