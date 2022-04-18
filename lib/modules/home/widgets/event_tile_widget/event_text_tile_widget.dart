import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/core.dart';
import '../../../../core/utils/format_string/format_string_utils.dart';
import '../../../../core/utils/format_string/format_string_utils.dart';
import '../../../../domain/event/model/event_model.dart';
import '../../../../shared/shimmer_container/shimmer_container_widget.dart';

class EventTextTileWidget extends StatelessWidget {
  final EventModel event;
  final bool isLoading;
  const EventTextTileWidget({
    Key? key,
    required this.event,
    this.isLoading = false,
  }) : super(key: key);

  String get friends => event.people > 1 ? "amigos" : "amigo";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLoading) ...[
              ShimmerContainerWidget(height: 19, width: 40.w),
              const SizedBox(height: 4),
              ShimmerContainerWidget(height: 18, width: 27.w),
            ] else ...[
              Text(event.title, style: AppTheme.textStyles.textSimpleBold),
              const SizedBox(height: 4),
              Text(FormatStringUtils.formatDateddMMMM(event.created),
                  style: AppTheme.textStyles.subtitleSimple),
            ],
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (isLoading) ...[
              ShimmerContainerWidget(height: 17, width: 20.w),
              const SizedBox(height: 4),
              ShimmerContainerWidget(height: 18, width: 12.w),
            ] else ...[
              Text("R\$ ${FormatStringUtils.formatMoney(event.value)}",
                  style: AppTheme.textStyles.textSimple),
              const SizedBox(height: 4),
              Text("${event.people} $friends",
                  style: AppTheme.textStyles.subtitleSimpleOpacity),
            ]
          ],
        ),
      ],
    );
  }
}
