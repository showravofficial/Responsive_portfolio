import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  void _clearFields() {
    _nameController.clear();
    _emailController.clear();
    _messageController.clear();
  }

  Future<void> _sendEmail() async {
    final String subject = 'Contact from ${_nameController.text}';
    final String body =
        'Name: ${_nameController.text}\nEmail: ${_emailController.text}\n\nMessage:\n${_messageController.text}';
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'showravofficial@gmail.com',
      query: Uri.encodeFull('subject=$subject&body=$body'),
    );

    print('Email URI: $emailUri'); // Debug print

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
      _clearFields();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch email client')),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff778899),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "@Email",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                    offset: Offset(2.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  label: Text("Name"),
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  label: Text("Email"),
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                    offset: Offset(2.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: TextField(
                controller: _messageController,
                decoration: InputDecoration(
                  hintText: "Type message here...",
                  label: Text("Message"),
                  icon: Icon(Icons.message),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                maxLines: 10,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 37.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.height / 1.5,
              child: ElevatedButton.icon(
                onPressed: _sendEmail,
                label: Text(
                  "Send",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(Icons.send),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 126, 160, 177),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
