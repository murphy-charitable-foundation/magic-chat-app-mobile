import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text("About"),
        leading: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Donate",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Paypal"),
                subtitle: Text(
                  "Here you can help somebody.",
                  style: TextStyle(color: Colors.grey),
                ),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Transactions"),
                subtitle: Text(
                  "Here you can help somebody.",
                  style: TextStyle(color: Colors.grey),
                ),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Report",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Report"),
                subtitle: Text(
                  "Here you can report something.",
                  style: TextStyle(color: Colors.grey),
                ),
                dense: true,
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "About",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shape: LinearBorder(),
              margin: EdgeInsets.zero,
              child: ListTile(
                title: Text("Murphy Charity"),
                subtitle: Text(
                  "About us",
                  style: TextStyle(color: Colors.grey),
                ),
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
