import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_data.dart';
import 'output_screen.dart';

class InputScreen extends StatelessWidget {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();

  InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Screen'),
      backgroundColor: Colors.blue,
      centerTitle: true,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Keeps the column compact
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to start
            children: [
              TextField(
                controller: _namecontroller,
                decoration: InputDecoration(labelText: 'Enter Your Name'),
              ),
              SizedBox(height: 40,),
              TextField(
                controller: _emailcontroller,
                decoration: InputDecoration(labelText: 'Email ID'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Update state with the entered text
                  Provider.of<UserData>(context, listen: false)
                      .updateData(name:_namecontroller.text, email: _emailcontroller.text,);

                  // Navigate to the output screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OutputScreen()),
                  );
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
