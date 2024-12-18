import 'package:flutter/material.dart';

// Define the User model
class User {
  final String name;
  final String subtitle;
  final String time;
  final AssetImage userProfileImage;

  User({
    required this.name,
    required this.subtitle,
    required this.time,
    required this.userProfileImage,
  });
}

// Create a list of User objects with daily life WhatsApp-like conversation snippets
List<User> userData = [
  User(
    name: 'Ahmed Ali',
    subtitle: 'See you at the mosque later?',
    time: '08:15 AM',
    userProfileImage: AssetImage('assets/images/st1.jpg'),
  ),
  User(
    name: 'Aisha Mohamed',
    subtitle: 'I just finished cooking, come over!',
    time: '09:30 AM',
    userProfileImage: AssetImage('assets/images/st2.jpeg'),
  ),
  User(
    name: 'Hassan Yusuf',
    subtitle: 'Let’s meet after work for coffee.',
    time: '10:45 AM',
    userProfileImage: AssetImage('assets/images/st3.webp'),
  ),
  User(
    name: 'Fatima Noor',
    subtitle: 'Are you coming to the family gathering?',
    time: '11:00 AM',
    userProfileImage: AssetImage('assets/images/st4.jpeg'),
  ),
  User(
    name: 'Muhammad Salman',
    subtitle: 'Did you finish the homework?',
    time: '12:15 PM',
    userProfileImage: AssetImage('assets/images/st1.jpg'),
  ),
  User(
    name: 'Zainab Farah',
    subtitle: 'Let’s catch up this weekend!',
    time: '01:30 PM',
    userProfileImage: AssetImage('assets/images/st2.jpeg'),
  ),
  User(
    name: 'Omar Ibrahim',
    subtitle: 'Can you send me that recipe?',
    time: '02:45 PM',
    userProfileImage: AssetImage('assets/images/st3.webp'),
  ),
  User(
    name: 'Maryam Khalid',
    subtitle: 'I’ll be a bit late, stuck in traffic.',
    time: '03:00 PM',
    userProfileImage: AssetImage('assets/images/st4.jpeg'),
  ),
  User(
    name: 'Bilal Ahmed',
    subtitle: 'Don’t forget our meeting tomorrow.',
    time: '04:15 PM',
    userProfileImage: AssetImage('assets/images/st1.jpg'),
  ),
  User(
    name: 'Khadija Osman',
    subtitle: 'I loved the gift, thank you!',
    time: '05:30 PM',
    userProfileImage: AssetImage('assets/images/st2.jpeg'),
  ),
  User(
    name: 'Yusuf Rahman',
    subtitle: 'Can we reschedule our call?',
    time: '06:45 PM',
    userProfileImage: AssetImage('assets/images/st3.webp'),
  ),
  User(
    name: 'Ruqayyah Saeed',
    subtitle: 'I’ll bring the dessert!',
    time: '07:00 PM',
    userProfileImage: AssetImage('assets/images/st4.jpeg'),
  ),
  User(
    name: 'Ismail Abdullahi',
    subtitle: 'Did you get the invitation?',
    time: '08:15 PM',
    userProfileImage: AssetImage('assets/images/st1.jpg'),
  ),
  User(
    name: 'Hafsa Ahmed',
    subtitle: 'Miss you! Let’s talk soon.',
    time: '09:30 PM',
    userProfileImage: AssetImage('assets/images/st2.jpeg'),
  ),
  User(
    name: 'Ali Hassan',
    subtitle: 'Room’s all set for tonight!',
    time: '10:45 PM',
    userProfileImage: AssetImage('assets/images/st3.webp'),
  ),
  User(
    name: 'Sumayya Noor',
    subtitle: 'Do you want me to bring anything?',
    time: '11:00 PM',
    userProfileImage: AssetImage('assets/images/st4.jpeg'),
  ),
  User(
    name: 'Hamza Khan',
    subtitle: 'Good morning! Ready for the big day?',
    time: '07:15 AM',
    userProfileImage: AssetImage('assets/images/st1.jpg'),
  ),
  User(
    name: 'Amina Yusuf',
    subtitle: 'I’ll stop by with some food.',
    time: '08:30 AM',
    userProfileImage: AssetImage('assets/images/st2.jpeg'),
  ),
  User(
    name: 'Abdullah Ali',
    subtitle: 'Did you check the news today?',
    time: '09:45 AM',
    userProfileImage: AssetImage('assets/images/st3.webp'),
  ),
  User(
    name: 'Laila Ibrahim',
    subtitle: 'Hope your day is going well!',
    time: '10:00 AM',
    userProfileImage: AssetImage('assets/images/st4.jpeg'),
  ),
];
