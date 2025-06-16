import 'package:club_sync/style/style.dart';
import 'package:flutter/material.dart';

class CSButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;

  const CSButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: CSColors.primaryColor,
          disabledBackgroundColor: CSColors.primaryColor,
          foregroundColor: CSColors.white,
          shadowColor: CSColors.primaryColor,
          surfaceTintColor: CSColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15)),
      child: Text(
        label,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: CSColors.white,
        ),
      ),
    );
  }
}
