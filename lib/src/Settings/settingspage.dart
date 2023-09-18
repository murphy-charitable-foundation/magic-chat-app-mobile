import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text("Settings"),
        leading: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Rez GodarzvandChegini"),
                dense: false,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/rez.jpg"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Permissions",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shape: const LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                  title: const Text("Noitifications"),
                  subtitle: const Text(
                    "Here you can notificate something.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  dense: true,
                  trailing: Switch(
                    value: true,
                    onChanged: (value) => true,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Help Center",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Tour"),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Help"),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("FAQ"),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "About",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Privacy Policy"),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Terms & conditions"),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Pen Pall"),
                subtitle: Text(
                  "Version: 1.0.0",
                  style: TextStyle(color: Colors.grey),
                ),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Log Out",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Log Out"),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
