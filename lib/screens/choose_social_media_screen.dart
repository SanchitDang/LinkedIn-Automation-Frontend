import 'package:flutter/material.dart';
import 'package:untitled/screens/fill_login_details_screen.dart';

class ChooseSocialMediaScreen extends StatefulWidget {
  const ChooseSocialMediaScreen({super.key});

  @override
  State<ChooseSocialMediaScreen> createState() => _ChooseSocialMediaScreenState();
}

class _ChooseSocialMediaScreenState extends State<ChooseSocialMediaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose a Social Media", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),), centerTitle: true, backgroundColor: Colors.black,),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FillLoginDetailScreen()),
                      );
                    },
                    child: const Text(
                      'Linkedin',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),),
                    ),

                    onPressed: () {},
                    child: const Text(
                      'Instagram',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),

                    onPressed: () {},
                    child: const Text(
                      'Facebook ',
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
    );
  }
}
