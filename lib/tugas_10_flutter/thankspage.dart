import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Thankspage extends StatefulWidget {
  const Thankspage({super.key, required this.name, required this.city});
  final String name;
  final String city;
  static const String id = '/thankspage';
  @override
  State<Thankspage> createState() => _ThankspageState();
}

class _ThankspageState extends State<Thankspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Thank you page!'),
          Text(
            'Terima kasih, ${widget.name}  dari  ${widget.city} telah mendaftar.',
          ),
        ],
      ),
    );
  }
}
