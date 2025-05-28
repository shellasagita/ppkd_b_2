import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatepickerTanggallahir extends StatefulWidget {
  const DatepickerTanggallahir({super.key});

  @override
  State<DatepickerTanggallahir> createState() => _DatepickerTanggallahirState();
}

class _DatepickerTanggallahirState extends State<DatepickerTanggallahir> {
  DateTime? selectedDate;
  TimeOfDay? selectedDay;
  final DateFormat formatter = DateFormat('dd MMMM yyyy');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              setState(() {
                selectedDate = picked;
              });
            }
          },
          child: Row(
            children: [
              Icon(Icons.calendar_month),
              SizedBox(width: 4),
              Text("Pilih Tanggal Lahir"),
            ],
          ),
        ),
        Text(
          selectedDate == null
              ? "Pilih Tanggal"
              : "Tanggal lahir: ${formatter.format(selectedDate!).toString()}",
        ),
      ],
    );
  }
}
