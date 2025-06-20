import 'package:flutter/material.dart';

// class SwitchModeGelap extends StatefulWidget {
//   const SwitchModeGelap({super.key});

//   @override
//   State<SwitchModeGelap> createState() => _SwitchModeGelapState();
// }

// bool isSwitchOn = false;

// class _SwitchModeGelapState extends State<SwitchModeGelap> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('Aktifkan Mode Gelap'),
//         Row(
//           children: [
//             Switch(
//               value: isSwitchOn,
//               onChanged: (value) {
//                 setState(() {
//                   isSwitchOn = value;
//                 });
//               },
//             ),
//             Text(isSwitchOn ? 'Mode Gelap Aktif' : 'Mode Terang Aktif'),
//           ],
//         ),
//       ],
//     );
//   }
// }

class SwitchModeGelap extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onChanged;

  const SwitchModeGelap({
    super.key,
    required this.isDarkMode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    Color textColor = isDarkMode ? Colors.white : Colors.black;
    return Column(
      children: [
        Text('Aktifkan Mode Gelap', style: TextStyle(color: textColor)),
        Row(
          children: [
            Switch(value: isDarkMode, onChanged: onChanged),
            Text(
              isDarkMode ? 'Mode Gelap Aktif' : 'Mode Terang Aktif',
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ],
    );
  }
}
