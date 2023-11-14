import 'package:flutter/material.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 40),
        tileColor: Color(0xFF666666),
        title: Text(
          "Shah Alam",
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          "thealamdev@gmail.com",
          style: TextStyle(color: Colors.white),
        ),
        trailing: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
              "https://bairesdev.mo.cloudinary.net/blog/2022/08/portrait-of-a-man-using-a-computer-in-a-modern-office-picture-id1344688156-1.jpg?tx=w_3840,q_auto"),
        ));
  }
}
