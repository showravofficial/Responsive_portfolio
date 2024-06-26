import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _messageController = TextEditingController();


    return Container(
      // height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15.0, right: 15.0,bottom: 20.0),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(40),
      ),
      child: SingleChildScrollView(
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
                onPressed: () {
                  
                },
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
