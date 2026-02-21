import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  final void Function(String?)? onSelected;
  const DropDownWidget({super.key, required this.onSelected});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedRole = 'client';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      onChanged: (value) {
        setState(() {
          selectedRole = value!;
        });
        widget.onSelected!(value);
        widget.onSelected?.call(value); // وده يروح للصفحة التانية
      },
      value: selectedRole,
      isExpanded: true,
      underline: SizedBox(),
      items: [
        DropdownMenuItem(value: 'client', child: Text("عميل (Client)")),
        DropdownMenuItem(value: 'admin', child: Text("إدارة (Admin)")),
      ],
    );
  }
}
