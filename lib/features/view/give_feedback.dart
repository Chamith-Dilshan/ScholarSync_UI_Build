import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  int? _selectedIndex;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Give Feedback'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 370,
                height: 653,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(176, 255, 255, 255),
                  ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                            
                      const Text(
                        'Help us serve you better',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                          ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'How would you rate your overall experience with ScholarSync?*',
                        style: TextStyle(
                          fontSize: 15
                          ),
                      ),
                      const SizedBox(height: 15),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton('Terrible', 0),
                          const SizedBox(width: 2),
                          _buildButton('Bad', 1),
                          const SizedBox(width: 2),
                          _buildButton('Okay', 2),
                          const SizedBox(width: 2),
                          _buildButton('Good', 3),
                          const SizedBox(width: 2),
                          _buildButton('Amazing', 4),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          const Text('What specific features do you like most about the app?'),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _controller1,
                            decoration:  InputDecoration(
                              labelText: 'Rate your overall experience with the app',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey, width: 1),
                              ),
                              
                              ),
                            validator: (value) {
                              if (value==null || value.isEmpty) {
                                return 'Please enter your rating';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          const Text('What improvements or new features would you like to see in future updates?'),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _controller2,
                            decoration:  InputDecoration(
                              labelText: 'Rate your overall experience with the app',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey, width: 1),
                              ),
                              
                              ),
                            validator: (value) {
                              if (value==null || value.isEmpty) {
                                return 'Please enter your suggestions';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Any other feedback or suggestions?')
                            ),
                            const SizedBox(height: 10),
                          TextFormField(
                            controller: _controller3,
                            decoration:  InputDecoration(
                              labelText: 'Rate your overall experience with the app',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey, width: 1),
                              ),
                              
                              ),
                            validator: (value) {
                              if (value==null || value.isEmpty) {
                                return 'Please enter your feedback';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 30),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: SizedBox(
                            width: 108.68,
                            height: 31.91,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(content: Text('Processing Data')));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                                )
                              ),
                              child: const Text('Submit'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildButton(String text, int index){
    return SizedBox(
      width: 62,
      height: 70,
      child: ElevatedButton(
        onPressed: (){
          setState(() {
            _selectedIndex = index;
          });
        },
          style: ElevatedButton.styleFrom(
            backgroundColor: index == _selectedIndex ? Colors.green :Colors.white,
          ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 8,
            color: index == _selectedIndex ? Colors.white : Colors.grey,
          ),
          ),
          
      ),
    );
  }
}