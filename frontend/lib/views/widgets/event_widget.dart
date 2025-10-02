import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventWidget extends StatefulWidget {
  final String eventName;
  final DateTime eventDate;
  final String eventLocation;
  
  const EventWidget({
    super.key,
    required this.eventName,
    required this.eventDate,
    required this.eventLocation,
  });

  @override
  State<EventWidget> createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  String isAttending = "Unknown";

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: isAttending == 'Accepted' 
              ? LinearGradient(
                  colors: <Color>[
                    Color.fromRGBO(107, 172, 246, 0.8),
                    Color.fromRGBO(107, 172, 246, 0.8),
                    Color.fromRGBO(91, 228, 100, 1),
                    Color.fromRGBO(91, 228, 100, 1),
                  ],
                  stops: [0.0, 0.6, 0.85, 1.0],
                )
              : isAttending == 'Absent'
                  ? LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(107, 172, 246, 0.8),
                        Color.fromRGBO(107, 172, 246, 0.8),
                        Color.fromRGBO(255, 91, 93, 1),
                        Color.fromRGBO(255, 91, 93, 1),
                      ],
                      stops: [0.0, 0.6, 0.85, 1.0],
                    )
                  : null,
          color: isAttending == "Unknown" ? Color.fromRGBO(107, 172, 246, 0.8) : null,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.eventName, 
                style: TextStyle(color: Colors.white, fontSize: 24)
              ),
              Text(
                DateFormat('yyyy-MM-dd \'at\' hh:mma').format(widget.eventDate), 
                style: TextStyle(color: Colors.white70, fontSize: 18.0)
              ),
              Text(
                widget.eventLocation, 
                style: TextStyle(color: Colors.white70, fontSize: 18.0)
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Will you attend? ", style: TextStyle(color: Colors.white, fontSize: 18),),
                  Spacer(),
                  Text(
                    isAttending,
                    style: TextStyle(
                      color: isAttending == "Accepted" ? Color.fromRGBO(91, 228, 100, 1) : isAttending == "Absent" ? Color.fromRGBO(255, 91, 93, 1) : Colors.white70,
                      fontSize: 18.0
                    )
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.check),
                    color: isAttending == "Accepted" || isAttending == "Unknown" ? Colors.white : Colors.black54,
                    onPressed: () => setState(() => isAttending = "Accepted"),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        isAttending == 'Accepted' ? Color.fromRGBO(91, 228, 100, 1) : Color.fromRGBO(107, 172, 246, 0.6)
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: isAttending == "Unknown" ? Colors.transparent : Colors.black26,
                            width: 1
                          )
                        )
                      )
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    color: isAttending == "Absent" || isAttending == "Unknown" ? Colors.white : Colors.black54,
                    onPressed: () => setState(() => isAttending = "Absent"),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        isAttending == 'Absent' ? Color.fromRGBO(255, 91, 93, 1) : Color.fromRGBO(107, 172, 246, 0.6)
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: isAttending == "Unknown" ? Colors.transparent : Colors.black26,
                            width: 1
                          )
                        )
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}