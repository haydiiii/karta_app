import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xFF6D5DF6),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.menu, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          // Add User
          ListTile(
            leading: Icon(Icons.person_add, color: Color(0xFF6D5DF6)),
            title: Text(
              'Add User',
              style: TextStyle(
                color: Color(0xFF6D5DF6),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
            },
          ),
          Divider(thickness: 1, color: Colors.black12),
          // User
          ListTile(
            leading: Icon(Icons.person, color: Color(0xFF6D5DF6)),
            title: Text(
              'User',
              style: TextStyle(
                color: Color(0xFF6D5DF6),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
            },
          ),
          Divider(thickness: 1, color: Colors.black12),
          // Logout
          ListTile(
            leading: Icon(Icons.logout, color: Color(0xFF6D5DF6)),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Color(0xFF6D5DF6),
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
