import 'package:club_sync/style/style.dart';
import 'package:club_sync/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CSColors.softWhite,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 18, right: 18),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today\'s Events',
                    style: CSTextStyle.mediumBodyText.copyWith(
                      color: CSColors.primaryColor,
                    ),
                  ),
                  Text(
                    'View All',
                    style: CSTextStyle.mediumBodyText.copyWith(
                      color: CSColors.accentColorRoyalPurple,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const CSEventCard(
                eventCardTitle: 'TGIF',
                eventCardDescription: 'DJ John | DJ Odin',
                eventCardTime: '9:00 PM - 4:00 AM',
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CSCard(
                      csCardType: CSCardType.reservation,
                      number: '8 / 15',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CSCard(
                      csCardType: CSCardType.walkIn,
                      number: '5',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Events',
                    style: CSTextStyle.mediumBodyText.copyWith(
                      color: CSColors.primaryColor,
                    ),
                  ),
                  Text(
                    'View All',
                    style: CSTextStyle.mediumBodyText.copyWith(
                      color: CSColors.accentColorRoyalPurple,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 210,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 15),
                  itemBuilder: (BuildContext context, int index) =>
                      const CSEventCard(
                    eventCardTitle: 'Ladies\' Night!!!!!',
                    eventCardDescription: 'TBA TBA TBA TBA TBA',
                    numberOfGuests: '12',
                    csEventCardType: CSEventCardType.upcoming,
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight + 20,
      titleSpacing: 0,
      backgroundColor: CSColors.primaryColor,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          'ClubSync',
          style: CSTextStyle.mediumLogoText.copyWith(color: CSColors.white),
        ),
      ),
      centerTitle: false,
    );
  }
}
