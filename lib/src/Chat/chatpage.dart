import 'package:flutter/material.dart';
import 'package:penpal/src/Chat/chatinsidepage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Chats",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    constraints:
                        const BoxConstraints(minHeight: 10, maxHeight: 40),
                    contentPadding: const EdgeInsets.all(0),
                    filled: true,
                    fillColor: const Color(0xfff1f1f1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search",
                    labelStyle: const TextStyle(fontSize: 12),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    prefixIconColor: Colors.black,
                  ),
                ),
                const Divider(color: Colors.black12),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatInsidePage()),
                    );
                  },
                  title: const Text("Rez GodarzvandChegini",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Hi, How are you?",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  isThreeLine: true,
                  dense: true,
                  trailing: const Text("12:00 PM"),
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/rez.jpg"),
                  ),
                ),
                const Divider(color: Colors.black12),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatInsidePage()),
                    );
                  },
                  title: const Text("Murphy Charity",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Where are you at?",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  isThreeLine: true,
                  dense: true,
                  trailing: const Text("10:00 PM"),
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/love.png"),
                  ),
                ),
                const Divider(color: Colors.black12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
