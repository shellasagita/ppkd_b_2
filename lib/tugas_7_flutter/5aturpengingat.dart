import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerAturPengingat extends StatefulWidget {
  const TimePickerAturPengingat({super.key});

  @override
  State<TimePickerAturPengingat> createState() =>
      _TimePickerAturPengingatState();
}

class _TimePickerAturPengingatState extends State<TimePickerAturPengingat> {
  TimeOfDay? selectedDay;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () async {
                final TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 1, minute: 10),
                );
                if (picked != null) {
                  setState(() {
                    selectedDay = picked;
                  });
                }
              },
              child: Row(
                children: [
                  Icon(Icons.watch_later),
                  Text('Pilih Waktu Pengingat'),
                ],
              ),
            ),
            Text(
              selectedDay == null
                  ? "Pilih Waktu"
                  : "Pengingat diatur pukul: ${DateFormat.jm().format(_timeOfDayToDateTime(selectedDay!))}",
            ),
          ],
        ),
      ],
    );
  }

  // Helper function to convert TimeOfDay to DateTime
  DateTime _timeOfDayToDateTime(TimeOfDay time) {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, time.hour, time.minute);
  }
}
