import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../constants/all_constants.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChange,
  });
  final bool value;
  final ValueChanged<bool> onChange;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool isActive = widget.value;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: isActive,
      activeColor: AppColors.primaryColor,
      onToggle: (bool value) {
        setState(() {
          isActive = !isActive;
          widget.onChange(isActive);
        });
      },
      height: 24,
      width: 44,
      padding: 2,
      toggleSize: 20,
    );
  }
}