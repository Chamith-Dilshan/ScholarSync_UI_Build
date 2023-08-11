import 'package:flutter/material.dart';
// import 'package:scholarsync/common/nav_bar.dart';
import '../../theme/palette.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  FeedbackFormState createState() => FeedbackFormState();
}

class FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  int? _selectedIndex;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteLightMode.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Give Feedback',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18, 
          ),
          ),
        backgroundColor: PaletteLightMode.backgroundColor,
        elevation: 0,
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
                          fontSize: 16
                          ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'How would you rate your overall experience with ScholarSync?*',
                        style: TextStyle(
                          fontSize: 13
                          ),
                      ),
                      const SizedBox(height: 15),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          feedbackColorBox('Terrible', Icons.sentiment_very_dissatisfied, 0),
                          const SizedBox(width: 2),
                          feedbackColorBox('Bad', Icons.sentiment_dissatisfied,1),
                          const SizedBox(width: 2),
                          feedbackColorBox('Okay', Icons.sentiment_neutral,2),
                          const SizedBox(width: 2),
                          feedbackColorBox('Good', Icons.sentiment_satisfied,3),
                          const SizedBox(width: 2),
                          feedbackColorBox('Amazing', Icons.sentiment_very_satisfied,4),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text(
                              'What specific features do you like most about the app?',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _controller1,
                              decoration:  InputDecoration(
                                
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
                            const Text(
                              'What improvements or new features would you like to see in future updates?',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _controller2,
                              decoration:  InputDecoration(
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
                              child: Text(
                                'Any other feedback or suggestions?',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              )
                              ),
                              const SizedBox(height: 8),
                            TextFormField(
                              controller: _controller3,
                              decoration:  InputDecoration(
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
                      ),
                      
                      
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
  Widget feedbackColorBox(String text, IconData icon,int index){
    return ElevatedButton(
        onPressed: (){
          setState(() {
            _selectedIndex = index;
          });
        },
          style: ElevatedButton.styleFrom(
            backgroundColor: index == _selectedIndex ? Colors.green :Colors.white,
            fixedSize: const Size(62, 70,)
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Icon(icon, color: index == _selectedIndex ? const Color.fromARGB(255, 255, 255, 255) : Colors.grey, size: 30,),
          const SizedBox(height: 12),
            Text(
              text,
              style: TextStyle(
                fontSize: 8,
                color: index == _selectedIndex ? Colors.white : Colors.grey,
              ),
              ),
          ],
        ),
          
      );
  }
}