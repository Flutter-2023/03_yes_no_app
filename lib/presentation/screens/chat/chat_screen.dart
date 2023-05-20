import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

import '../../widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://user-images.githubusercontent.com/1962818/176392537-f1203a96-61f5-40ab-aada-6b29472f4482.png'),
          ),
        ),
        title: const Text('Mi amor ❤'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      // Para el notch de abajo
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // Expanded(
            //   child: Container(
            //     color: Colors.red,
            //   )
            // ),
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                // return ( index % 2 == 0)
                //   ? const HerMessageBubble()
                //   : const MyMessageBubble();

                final message = chatProvider.messages[index];

                return ( message.fromWho == FromWho.HERS )
                    ? const HerMessageBubble()
                    : MyMessageBubble(message: message);
              },
            )),

            // Caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
