import 'package:flutter/material.dart';

class CreatePromptScreen extends StatefulWidget {
  const CreatePromptScreen({super.key});

  @override
  State<CreatePromptScreen> createState() => _CreatePromptScreenState();
}

class _CreatePromptScreenState extends State<CreatePromptScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Genrate Images "),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              color: Colors.deepPurple,
            )),
            Container(
              height: 240,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter your prompt",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  
                  ),),
                  TextField(
                    controller: controller,
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 48,
                    width: double.maxFinite,
                    child: ElevatedButton.icon(
                       style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.deepPurple)),
                      onPressed: () {},
                    icon: Icon(Icons.generating_tokens), 
                    label: Text("Genrating")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
