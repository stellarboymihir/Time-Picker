import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TimeOfDay _timeOfDay = TimeOfDay.now();

void _showTimePicker(){
  showTimePicker(
    context: context, 
    initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker', 
        style: TextStyle(color: Colors.black)
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.punch_clock, color: Colors.black),
            tooltip: 'Time Picker',
            onPressed: (){
              ScaffoldMessenger.of(context).
              showSnackBar(
                const SnackBar(
                  content: Text('This is a snackbar'),
                ),
              );
            },
            alignment: Alignment.centerRight,
            
          )
        ],
        backgroundColor: Colors.cyanAccent,
        shadowColor: Colors.black,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Display the chosen time
            Text(
              _timeOfDay.format(context).toString(),
              style: const TextStyle(fontSize: 60),
            ),
            // Button to pick time
            
            MaterialButton(
              onPressed: _showTimePicker,
            color: Colors.cyanAccent,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text
                ('PICK TIME', 
                  style: TextStyle
                  (
                  color: Colors.black,
                  fontSize: 30,
                  )
                ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}