import 'package:flutter/material.dart';

class ComboBox extends StatefulWidget {
  const ComboBox({super.key});

  @override
  State<ComboBox> createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  List<String> items = ['HCM', 'Hà Nội', 'Huế', 'Đà Nẵng'];

  String selectedValue = 'HCM';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("Location"),
      DropdownButton<String>(
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: const TextStyle(fontWeight: FontWeight.bold),),
            );
          }).toList(),
        ),
    ],);
  }
}