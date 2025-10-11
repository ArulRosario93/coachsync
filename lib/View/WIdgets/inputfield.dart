import 'package:flutter/material.dart';
  
class InputField extends StatelessWidget {

  final String title;
  final TextEditingController controller;
  final String helperText;
  final bool obsureText;
  final GestureTapCallback? onTap;
  const InputField({super.key, required this.title, required this.controller, required this.helperText, required this.obsureText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: MediaQuery.of(context).size.width * .89, child: Text(title, textAlign: TextAlign.left, style: TextStyle(fontSize: 15, color: Color(0xFFD9D9D9)),)),

        const SizedBox(height: 8,),

        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * .89,
          child: TextField(
            onTap: onTap,
            controller: controller,
            obscureText: obsureText,
            decoration: InputDecoration(
              hintText: helperText,
              fillColor: Color(0xFFD9D9D9),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(color: Color(0xFFD9D9D9), width: 2.0)
              )
            ),
          ),
        )
      ],
    );
  }
}