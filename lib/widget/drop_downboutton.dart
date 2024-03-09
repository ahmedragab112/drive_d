import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  List<String> genders = ['Male', 'Female'];
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: const Color(0xff292F36)),
      ),
      child: DropdownButton<String>(
        value: selectedGender,
        alignment: Alignment.centerRight,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Color(0xff9D9D9D),
        ),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xff9D9D9D)),
        isExpanded: true,
        underline: const SizedBox(),
        onChanged: (String? newValue) {
          setState(() {
            selectedGender = newValue!;
          });
        },
        items: genders.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
