import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final bool isSelected;
  final String label;
  final void Function(bool) onSelected;
  const CategoryChip(
      {super.key,
      required this.isSelected,
      required this.onSelected,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8, top: 5),
      child: FilterChip(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          label: Text(
            label,
          ),
          selected: isSelected,
          onSelected: onSelected),
    );
  }
}
