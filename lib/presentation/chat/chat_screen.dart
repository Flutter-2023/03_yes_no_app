import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://user-images.githubusercontent.com/1962818/176392537-f1203a96-61f5-40ab-aada-6b29472f4482.png'),
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
    return SafeArea( // Para el notch de abajo
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
                itemCount: 100,
                itemBuilder: (context, index) {

                  return Text('Indice $index');
                  
                },
              )
            ),
          
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }

}