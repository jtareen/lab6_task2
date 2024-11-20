import 'package:flutter/material.dart';
import 'package:lab6_task2/widgets/buttons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Color.fromRGBO(244, 244, 244, 1.0),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(246, 132, 33, 1),
      ),
      backgroundColor: const Color.fromRGBO(246, 132, 33, 1),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(244, 244, 244, 1.0),
                width: 3.0),
                borderRadius: BorderRadius.circular(100.0)
              ),
    child: ClipOval(
      child: Image.asset('assets/images/user4.jpeg', width: 200, height: 200, fit: BoxFit.cover,),
    ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'John Doe',
              style: const TextStyle(
                  color: Color.fromRGBO(244, 244, 244, 1.0),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              'NEW YORK, NY - DESIGNER',
              style: const TextStyle(
                  color: Color.fromRGBO(243, 205, 171, 1.0),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: PrimaryIconButton(
                icon: Icons.wifi_tethering_error_outlined,
                text: 'Give Kudos',
                onPressed: () {},
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryIconButton(icon: Icons.phone, onPressed: () {}),
                PrimaryIconButton(
                    icon: Icons.chat_bubble_outline, onPressed: () {}),
                PrimaryIconButton(icon: Icons.email_outlined, onPressed: () {}),
                PrimaryIconButton(icon: Icons.calendar_today, onPressed: () {}),
              ],
            ),
          )
        ],
      )),
    );
  }
}
