import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 18),
      // height: 200,
      decoration: BoxDecoration(
        color: Color(0xffFFCB7B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 16),
              child: Text(
                'Build your career with mohamed magdy',
                style: TextStyle(
                  color: Colors.black.withAlpha(100),
                  fontSize: 16,
                ),
              ),
            ),
            trailing: IconButton(
              padding: EdgeInsets.only(bottom: 30),
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              'OCT 30 , 2025',
              style: TextStyle(color: Colors.black.withAlpha(100)),
            ),
          ),
        ],
      ),
    );
  }
}
