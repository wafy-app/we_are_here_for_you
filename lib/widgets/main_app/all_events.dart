import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_are_here_for_you/model/Event.dart';
import 'package:we_are_here_for_you/providers/events_provider.dart';

class AllEvents extends StatefulWidget {
  const AllEvents({Key? key}) : super(key: key);

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  @override
  Widget build(BuildContext context) {
    List<Event> items = Provider.of<EventsProvider>(context).events;
    print(items);
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            items[index].eventName,
            style: const TextStyle(color: Colors.amber),
          ),
        );
      },
    );
    // return Text('data');
  }
}
