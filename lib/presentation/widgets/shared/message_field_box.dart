import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  const MessageFieldBox({ super.key });

  @override
  Widget build(BuildContext context) {

    //final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: colors.primary
        //   ),
        //   borderRadius: BorderRadius.circular(20)
        // ),
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            print('Valor de la caja de texto');
          },
        ),
      );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit $value');
      },
      onChanged: (value) {
        print('Changed $value');
      },
    );
  }
}