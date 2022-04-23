import 'package:flutter/material.dart';

import 'package:split_it_ignite/modules/home/widgets/money_icon_widget/money_icon_widget.dart';

import '../../../../core/core.dart';
import '../../../../domain/event/model/event_model.dart';
import 'event_text_tile_widget.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel event;
  final bool isLoading;
  final Function()? onTap;
  const EventTileWidget({
    Key? key,
    required this.event,
    this.isLoading = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoneyIconWidget(
              isRecieved: event.value > 0,
              width: 40,
              height: 40,
              isLoading: isLoading,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    EventTextTileWidget(event: event, isLoading: isLoading),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
