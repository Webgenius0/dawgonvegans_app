import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final List<String> itemsList;
  final String selectedItem;
  final ValueChanged<String> onChanged;

  const CustomDropDownButton({
    super.key,
    required this.itemsList,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      onChanged: (String? newValue) {
        if (newValue != null) {
          onChanged(newValue);
        }
      },
      items:
          itemsList
              .map(
                (item) =>
                    DropdownMenuItem<String>(value: item, child: Text(item)),
              )
              .toList(),

      /* decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Select an item',
      ), */
    );
  }
}
