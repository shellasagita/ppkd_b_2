import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/constant/app_style.dart';

class CheckBoxCustom extends StatefulWidget {
  const CheckBoxCustom({super.key, this.valueCheck});
  final bool? valueCheck;

  @override
  State<CheckBoxCustom> createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {
  bool valueCheck = false;
  @override
  void initState() {
    valueCheck = widget.valueCheck ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          // fillColor: WidgetStateProperty.all(AppColor.army1),
          activeColor: AppColor.army2,
          checkColor: Colors.white,
          shape: CircleBorder(),
          side: BorderSide(color: AppColor.army2, width: 0),
          value: valueCheck,
          onChanged: (value) {
            setState(() {
              print("Checkbox value changed: $value");
              valueCheck = value ?? false;
            });
          },
        ),
        Text(
          valueCheck ? "Sudah bagus" : "Belum bagus",
          style: AppStyle.fontBold(fontSize: 18),
        ),
      ],
    );
  }
}
