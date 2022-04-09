import 'package:flutter/material.dart';

import 'package:split_it_ignite/modules/home/widgets/money_icon_widget/money_icon_widget.dart';

import '../../../../core/core.dart';
import '../../../../domain/event/model/event_model.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel event;
  const EventTileWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

  String get friends => event.people > 1 ? "amigos" : "amigo";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoneyIconWidget(isRecieved: event.value > 0, width: 40, height: 40),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(event.title,
                              style: AppTheme.textStyles.textSimpleBold),
                          const SizedBox(height: 4),
                          Text(event.created.toString(),
                              style: AppTheme.textStyles.subtitleSimple),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              "R\$ ${event.value.abs().toStringAsFixed(2).replaceFirst('.', ',')}",
                              style: AppTheme.textStyles.textSimple),
                          const SizedBox(height: 4),
                          Text("${event.people} $friends",
                              style: AppTheme.textStyles.subtitleSimpleOpacity),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Divider(color: AppTheme.colors.divider),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
