import 'package:demo3/models/user_model.dart';
import 'package:flutter/material.dart';
class Message {
  final User sender;
  final String time;
  final String text;
  final String subject;
  final bool isStarred;
  final bool unread;
  Message({
    this.sender,
    this.time,
    this.text,
    this.subject,
    this.isStarred,
    this.unread,
  });
}

final User currentUser =User(id: 0, name: 'Deepa Pandey', imageUrl: Colors.red);
final User linkedln = User(id: 1, name: 'Linkedln', imageUrl: Colors.orange);
final User sugar = User(id: 2, name: 'Sugar Cosmetics', imageUrl: Colors.grey);
final User medium = User(id: 3, name: 'Medium Daily Digest', imageUrl: Colors.pink[900]);
final User amazon = User(id: 4, name: 'Amazon.in', imageUrl: Colors.yellow);
final User deepak = User(id: 5, name: 'Deepak Pandey', imageUrl: Colors.red);
final User balram = User(id: 6, name: 'Balram Rathore', imageUrl:Colors.teal);
final User leetcode = User(id: 7, name: 'LeetCode', imageUrl: Colors.blueGrey);
final User digitalocean = User(id: 8, name: 'Digital Ocean', imageUrl: Colors.deepPurpleAccent);
final User digitalocean1 = User(id: 9, name: 'Digital Ocean', imageUrl: Colors.greenAccent);
final User digitalocean2 = User(id: 10, name: 'Digital Ocean', imageUrl: Colors.lightBlue);
final User digitalocean3 = User(id: 11, name: 'Digital Ocean', imageUrl: Colors.amber);
final User digitalocean4 = User(id: 12, name: 'Digital Ocean', imageUrl: Colors.pink[700]);

//Chats on Mail Screen

List<Message> mails = [
  Message(
    sender: linkedln,
    time: '10:30 PM',
    text: 'View jobs in Bengaluru, Karnataka, India, match your preferences',
    subject: '11 new jobs for "Full Stack Engineers" ',
    isStarred: true,
    unread: true,
  ),
  Message(
    sender: sugar,
    time: '9:55 PM',
    text: 'Get the best ❤️red❤️ mini Lipstick💄 Set at a complete 25% discount',
    subject: 'Limited-edition V-day 💄',
    isStarred: false,
    unread: false,
  ),
  Message(
    sender: medium,
    time: '9:05 PM',
    text: 'Stories for Deepa Pandey : How I got an engineering internships in',
    subject: 'Simple SQFlite databases examples in flutter',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: amazon,
    time: '8:30 PM',
    text: 'Amazon Orders|1 of 5 items order has been dispatched',
    subject: 'Your Amazon.in order #205-304458 of 1 item has been dispatched',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: deepak,
    time: 'Feb 12',
    text: 'Check the modified PDF attached & send feedback',
    subject: 'PDF attached',
    isStarred: true,
    unread: false,
  ),
  Message(
    sender: balram,
    time: 'Feb 12',
    text: 'Ive created the collab repo, shall we start making the project?',
    subject: 'Invitation to github collaborator',
    isStarred: true,
    unread: false,
  ),
  Message(
    sender: leetcode,
    time: 'Feb 11',
    text: 'Hello!🎉 Congratulations to our 1st leetcodes Pick winner',
    subject: 'Leetcode Weekly Digest',
    isStarred: true,
    unread: true,
  ),
  Message(
    sender: digitalocean,
    time: 'Feb 10',
    text: 'Get your Dev Badge at Hacktoberfest ,just by login into the Dev Website ',
    subject: 'Dev Badge @Hacktoberfest',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: digitalocean1,
    time: 'Feb 10',
    text: 'Get your Dev Badge at Hacktoberfest ,just by login into the Dev Website ',
    subject: 'Dev Badge @Hacktoberfest',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: digitalocean2,
    time: 'Feb 10',
    text: 'Get your Dev Badge at Hacktoberfest ,just by login into the Dev Website ',
    subject: 'Dev Badge @Hacktoberfest',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: digitalocean3,
    time: 'Feb 10',
    text: 'Get your Dev Badge at Hacktoberfest ,just by login into the Dev Website ',
    subject: 'Dev Badge @Hacktoberfest',
    isStarred: false,
    unread: true,
  ),
  Message(
    sender: digitalocean4,
    time: 'Feb 10',
    text: 'Get your Dev Badge at Hacktoberfest ,just by login into the Dev Website ',
    subject: 'Dev Badge @Hacktoberfest',
    isStarred: false,
    unread: true,
  ),
];
