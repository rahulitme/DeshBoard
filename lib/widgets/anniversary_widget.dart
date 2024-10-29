import 'package:flutter/material.dart';

class AnniversaryWidget extends StatelessWidget {
  const AnniversaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[100],
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Anniversaries', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 8),
            Text('🎉 Alex Johnson - 5 Years on 1st November'),
            Text('🎉 Maria Davis - 3 Years on 10th November'),
          ],
        ),
      ),
    );
  }
}
