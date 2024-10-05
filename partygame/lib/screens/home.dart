import 'package:flutter/material.dart';

import 'createParty.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Guess the Pic',
            style: TextStyle(
              fontSize: 46,
            ),
          ),
          SizedBox(height: 22),
          Text(
            'Create or Join a party to play',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateParty())
                  );
                },
                child: Text('Create Party')
              ),
              FilledButton(
                onPressed: null,
                child: Text('Join Party')
              )
            ],
          )
        ],)
    );
  }

}