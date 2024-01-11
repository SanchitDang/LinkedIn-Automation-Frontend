import 'package:flutter/material.dart';
import 'package:untitled/screens/bot_running_screen.dart';


class FillLoginDetailScreen extends StatefulWidget {
  const FillLoginDetailScreen({super.key});

  @override
  State<FillLoginDetailScreen> createState() => _FillLoginDetailScreenState();
}

class _FillLoginDetailScreenState extends State<FillLoginDetailScreen> {
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _targetController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter Bot Instance Details", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),), centerTitle: true,backgroundColor: Colors.black,),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.mail, color: Colors.black,), // add an icon at the end of the text field
                  contentPadding: EdgeInsets.only(top: 18.0), // reduce the vertical spacing
                  isDense: true, // reduce the overall height of the text field
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),)
              ),
            ),
            SizedBox(height: 20,),
            const Text("Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.lock, color: Colors.black,), // add an icon at the end of the text field
                  contentPadding: EdgeInsets.only(top: 18.0), // reduce the vertical spacing
                  isDense: true, // reduce the overall height of the text field
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),)
              ),
            ),
            SizedBox(height: 20,),
            const Text("Target",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _targetController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter Target';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: 'Example Username',
                  suffixIcon: Icon(Icons.person, color: Colors.black,), // add an icon at the end of the text field
                  contentPadding: EdgeInsets.only(top: 18.0), // reduce the vertical spacing
                  isDense: true, // reduce the overall height of the text field
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),)
              ),
            ),
            SizedBox(height: 20,),
            const Text("Message to be Sent",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _messageController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter Message to be Sent';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: 'Message to be Sent',
                  suffixIcon: Icon(Icons.message, color: Colors.black,), // add an icon at the end of the text field
                  contentPadding: EdgeInsets.only(top: 18.0), // reduce the vertical spacing
                  isDense: true, // reduce the overall height of the text field
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),)
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BotRunningScreen()),
                        );
                      },
                      child: const Text(
                        'ACTIVATE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }



}
