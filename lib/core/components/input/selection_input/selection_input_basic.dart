import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:himalaya_application/core/utils/screen_resolution.dart';

class SelectionInputBasic extends StatefulWidget {
  const SelectionInputBasic({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelectionInputBasicState createState() => _SelectionInputBasicState();
}

class _SelectionInputBasicState extends State<SelectionInputBasic> {
  var gradeList = [
    "Kelas 1 SD",
    "Kelas 2 SD",
    "Kelas 3 SD",
    "Kelas 4 SD",
    "Kelas 5 SD",
  ];
  String selectedValue = "Kelas 1 SD";
  @override
  Widget build(BuildContext context) {
    Map<String, double> screenSize = getScreenSize(context);
    return DropdownButtonHideUnderline(
        child: DropdownButton2(
      value: selectedValue,
      isExpanded: true,
      buttonStyleData: ButtonStyleData(
        height: 56,
        width: double.infinity - 48,
        padding: const EdgeInsets.only(left: 14, right: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.white, width: 1),
            color: Colors.transparent),
        elevation: 0,
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down,
        ),
        iconSize: 20,
        iconEnabledColor: Colors.white,
        iconDisabledColor: Colors.grey,
      ),
      dropdownStyleData: DropdownStyleData(
        elevation: 0,
        maxHeight: 300,
        width: screenSize['width']! - 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black87,
        ),
        offset: const Offset(0, 0),
        direction: DropdownDirection.right,
        scrollbarTheme: const ScrollbarThemeData(
          radius: Radius.circular(40),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        height: 40,
        padding: EdgeInsets.only(left: 14, right: 14),
      ),
      items: gradeList.map((String gradeItem) {
        return DropdownMenuItem<String>(
          value: gradeItem,
          child: Text(
            gradeItem,
            style: const TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
      onChanged: (String? currentSelectedItem) {
        setState(() {
          selectedValue = currentSelectedItem!;
        });
      },
    ));
  }
}
