import 'package:flutter/material.dart';
import 'package:prospect/views/widgets/event_widget.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(107, 172, 246, 0.7),
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Text("Upcoming Events", style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              EventWidget(
                eventName: "Tryout #1",
                eventDate: DateTime(2024, 01, 20, 10, 0),
                eventLocation: "Main Field"
              ),
              EventWidget(
                eventName: "Team Film Review",
                eventDate: DateTime(2024, 01, 22, 11, 30),
                eventLocation: "Upper Office"
              ),
              EventWidget(
                eventName: "Practice",
                eventDate: DateTime(2024, 01, 24, 19, 0),
                eventLocation: "Main Field"
              ),
            ],
          ),
        ),
    );
  }
}