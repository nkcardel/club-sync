import 'package:club_sync/style/style.dart';
import 'package:flutter/material.dart';

enum CSEventCardType { today, upcoming }

class CSEventCard extends StatelessWidget {
  final String? eventCardImage;
  final String? eventCardTitle;
  final String? eventCardDescription;
  final String? eventCardDate;
  final String? eventCardTime;
  final String? numberOfGuests;
  final CSEventCardType csEventCardType;

  const CSEventCard({
    super.key,
    this.eventCardImage,
    this.eventCardTitle,
    this.eventCardDescription,
    this.eventCardDate,
    this.eventCardTime,
    this.numberOfGuests,
    this.csEventCardType = CSEventCardType.today,
  });

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;
    double imageWidth = MediaQuery.of(context).size.width;
    double imageHeight = 180.0;
    double pillWidth = 80.0;
    int maxLines = 1;
    String? eventCardDateTime;

    switch (csEventCardType) {
      case CSEventCardType.upcoming:
        containerWidth = 150.0;
        imageWidth = 150.0;
        imageHeight = 150.0;
        maxLines = 1;
        pillWidth = 85.0;
        eventCardDateTime = eventCardDate ?? '10/10/2025';
        break;
      case CSEventCardType.today:
      default:
        containerWidth = MediaQuery.of(context).size.width;
        imageWidth = MediaQuery.of(context).size.width;
        imageHeight = 180.0;
        maxLines = 2;
        pillWidth = 75.0;
        eventCardDateTime = eventCardTime ?? '08:50 PM';
        break;
    }

    return Container(
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CSColors.primaryColor.withOpacity(0.05),
      ),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  eventCardImage ?? 'https://picsum.photos/300/300',
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
              ),
              Visibility(
                visible: csEventCardType == CSEventCardType.upcoming,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 8.0),
                  child: Container(
                    width: pillWidth,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: CSColors.softWhite,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        eventCardDateTime,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        style: CSTextStyle.smallMediumText
                            .copyWith(color: CSColors.primaryColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        eventCardTitle ?? 'IT\'S FRIDAY NIGHT',
                        textAlign: TextAlign.start,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        style: CSTextStyle.boldBodyText
                            .copyWith(color: CSColors.primaryColor),
                      ),
                      Text(
                        eventCardDescription ??
                            'Opening Set - DJ John\nClosing Set - DJ Odeen',
                        textAlign: TextAlign.start,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        style: CSTextStyle.bodyText
                            .copyWith(color: CSColors.primaryColor),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: csEventCardType == CSEventCardType.today,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          eventCardDate ?? 'September 25, 2025',
                          textAlign: TextAlign.start,
                          maxLines: maxLines,
                          overflow: TextOverflow.ellipsis,
                          style: CSTextStyle.boldBodyText
                              .copyWith(color: CSColors.primaryColor),
                        ),
                        Text(
                          eventCardTime ?? '9:00 PM - 1:00 AM',
                          textAlign: TextAlign.start,
                          maxLines: maxLines,
                          overflow: TextOverflow.ellipsis,
                          style: CSTextStyle.bodyText
                              .copyWith(color: CSColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
