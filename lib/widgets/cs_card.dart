import 'package:club_sync/style/style.dart';
import 'package:flutter/material.dart';

enum CSCardType { reservation, walkIn }

class CSCard extends StatelessWidget {
  final String? number;
  final CSCardType csCardType;

  const CSCard({
    super.key,
    this.number,
    this.csCardType = CSCardType.reservation,
  });

  @override
  Widget build(BuildContext context) {
    Color containerColor = CSColors.pastelBlue;
    Color titleColor = CSColors.darkBlue;
    String title = 'Walk-In';

    switch (csCardType) {
      case CSCardType.reservation:
        containerColor = CSColors.pastelGreen;
        titleColor = CSColors.darkGreen;
        title = 'Table Reservations';
        break;
      default:
        containerColor = CSColors.pastelBlue;
        titleColor = CSColors.darkBlue;
        title = 'Walk-Ins';
        break;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              maxLines: 1,
              style: CSTextStyle.boldBodyText.copyWith(color: titleColor),
            ),
            Text(
              number ?? '0',
              maxLines: 1,
              style: CSTextStyle.boldsubtitleText
                  .copyWith(color: CSColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
