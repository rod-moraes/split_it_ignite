import 'package:flutter/material.dart';
import 'package:split_it_ignite/domain/event/model/event_model.dart';
import 'package:split_it_ignite/modules/home/widgets/box_money_widget/box_money_widget.dart';

import '../../domain/login/model/user_model.dart';
import 'widgets/app_bar/app_bar_widget.dart';
import 'widgets/event_tile_widget/event_tile_widget.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final events = [
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: -35,
      people: 1,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 150,
      people: 2,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: -55,
      people: 1,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
    EventModel(
      title: "Churrasco",
      created: DateTime.now(),
      value: 35,
      people: 12,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHomeWidget(
        onTap: () {},
        name: widget.user.name,
        photoUrl: widget.user.photoUrl,
        boxLeft: BoxMoneyWidget(value: 124),
        boxRight: BoxMoneyWidget(value: -48),
      ),
      body: ListView.builder(
          itemCount: events.length,
          padding: EdgeInsets.only(top: 40),
          prototypeItem: EventTileWidget(event: events.first),
          itemBuilder: (context, index) {
            return EventTileWidget(event: events[index]);
          }),
    );
  }
}
