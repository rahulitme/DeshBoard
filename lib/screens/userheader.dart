import 'package:flutter/material.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/user.png'), // Make sure to add an image asset
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pooja Mishra',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Admin', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
