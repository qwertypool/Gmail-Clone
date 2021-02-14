import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  Drawers({Key key}) : super(key: key);

  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   margin: EdgeInsets.only(bottom: 0.0),
          //   padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            
          //   child: Text(
          //     'Gmail Clone',
          //     style: TextStyle(
          //       color: Colors.red,
          //       //fontFamily: 'LexendMega',
          //       fontFamily: 'Cinzel',
          //       fontSize: 22.0,
          //     ),
          //   ),
          // ),
          Container(
          padding: const EdgeInsets.fromLTRB(20, 50, 0, 10),
          width: MediaQuery.of(context).size.width * 0.45,
           child: Text(
              'Gmail Clone',
              style: TextStyle(
                color: Colors.red,
                //fontFamily: 'LexendMega',
                fontFamily: 'Cinzel',
                fontSize: 22.0,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.filter),
            title: Text('All inboxes'),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
          ),
          ListTile(
            leading: Icon(Icons.label_important_outline),
            title: Text('Important'),
          ),
          ListTile(
            leading: Text('RECENT LABELS'),
          ),
          ListTile(
            leading: Icon(Icons.label),
            title: Text('Important'),
          ),
          ListTile(
            leading: Text('ALL LABELS'),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Important'),
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Snoozed'),
          ),
          ListTile(
            leading: Icon(Icons.label_important_outline),
            title: Text('Important'),
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text('Sent'),
          ),
          ListTile(
            leading: Icon(Icons.schedule_send),
            title: Text('Scheduled'),
          ),
          ListTile(
            leading: Icon(Icons.outbox),
            title: Text('Outbox'),
          ),
          ListTile(
            leading: Icon(Icons.file_copy),
            title: Text('Drafts'),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('All mail'),
          ),
          ListTile(
            leading: Icon(Icons.error_outline),
            title: Text('Spam'),
          ),
          ListTile(
            leading: Icon(Icons.delete_outline),
            title: Text('Trash'),
          ),
          Divider(),
          ListTile(
            leading: Text('GOOGLE APPS'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Contact'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Feedback'),
          ),
        ],
      ),
    );
  }
}
