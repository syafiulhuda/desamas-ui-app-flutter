import 'package:desamas/widgets/chat_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final List<ChatMessage> messages = [
    ChatMessage(
      messageContent: 'Halo, Pagi',
      messageType: 'sender',
    ),
    ChatMessage(
      messageContent: 'Ada yang bisa dibantu?',
      messageType: 'receiver',
    ),
    ChatMessage(
      messageContent: 'Saya ingin menanyakan terkait pengajuan surat domisili',
      messageType: 'sender',
    ),
    ChatMessage(
      messageContent:
          'Untuk hal tersebut, dapat kakak lihat pada halaman "Riwayat" dan klik tombol "Detail"',
      messageType: 'receiver',
    ),
    ChatMessage(
      messageContent: 'Baik, Terimakasih',
      messageType: 'sender',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Service"),
        actions: const [
          Icon(
            Icons.videocam,
            size: 35,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.call,
            size: 28,
          ),
          SizedBox(width: 20),
          Icon(CupertinoIcons.ellipsis_vertical),
          SizedBox(width: 5),
        ],
        backgroundColor: const Color.fromRGBO(31, 175, 176, 1),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: (messages[index].messageType == "receiver")
                          ? Colors.grey.shade300
                          : const Color.fromRGBO(31, 175, 176, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(
                        fontSize: 16,
                        color: (messages[index].messageType == "sender")
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 5, bottom: 10, top: 10),
              height: 70,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Tulis Pesan...',
                        hintStyle: const TextStyle(color: Colors.black54),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions),
                          color: const Color.fromRGBO(31, 175, 176, 1),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.link_outlined),
                              color: const Color.fromRGBO(31, 175, 176, 1),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.camera),
                              color: const Color.fromRGBO(31, 175, 176, 1),
                            ),
                          ],
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color.fromRGBO(31, 175, 176, 1),
                    elevation: 0,
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
