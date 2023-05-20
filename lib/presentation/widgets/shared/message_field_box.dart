import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    // Elemento a poner el foco
    final focusNode = FocusNode();

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
      hintText: 'End your message with a "??"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('button $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus(); // Cuando hago click afuera quita ek foco
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit $value');
        textController.clear();
        focusNode.requestFocus(); // cuando limpia mantiene el foco
      },
      // onChanged: (value) {
      //   print('Changed $value');
      // },
    );
  }
}
