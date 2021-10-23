import 'package:flutter/material.dart';
import 'package:we_are_here_for_you/model/my_event.dart';

class EventsProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Event> _events = [
    Event(
      eventName: 'الرحمة',
      descraption:
          'مبادرة شبابية عربية اردنية ذات طابع اردني لاسباب متعددة منها رفع قيمة الشباب العربي بالدول العربية ',
      imageUrl: 'https://miro.medium.com/max/700/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
      time: 'الثلاثاء',
      eventDate: DateTime.now(),
      billing: '10',
      longitude: 31.9539,
      latitude: 35.9106,
      inRole: [],
    ),
    Event(
        eventName: 'العدالة',
        descraption:
            'مبادرة شبابية عربية اردنية ذات طابع اردني لاسباب متعددة منها رفع قيمة الشباب العربي بالدول العربية ',
        imageUrl:
            'https://miro.medium.com/max/700/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
        time: 'الاثنين',
        eventDate: DateTime.now(),
        billing: '20',
        longitude: 31.9539,
        latitude: 35.9106,
        inRole: []),
    Event(
        eventName: 'المساواة',
        descraption:
            'مبادرة شبابية عربية اردنية ذات طابع اردني لاسباب متعددة منها رفع قيمة الشباب العربي بالدول العربية ',
        imageUrl:
            'https://miro.medium.com/max/700/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg',
        time: 'الثلاثاء',
        eventDate: DateTime.now(),
        billing: '10',
        longitude: 31.9539,
        latitude: 35.9106,
        inRole: [])
  ];

  List<Event> get events {
    return [..._events];
  }
}
