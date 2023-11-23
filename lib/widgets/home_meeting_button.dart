import 'package:flutter/material.dart';
import 'package:Chatty/utilities/colors.dart';

class HomeMeetingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  const HomeMeetingButton(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            width: 57,
            height: 57,
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.06),
                      offset: const Offset(0, 4))
                ]),
            child: Icon(
              icon,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.grey,
                fontSize: deviceWidth * 0.04,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
