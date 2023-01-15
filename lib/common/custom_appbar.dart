import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final bool haveBack;
  const CustomAppbar({
    super.key,
    this.haveBack = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xff105E2F),
            Color(0xff3BE542),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 4,
      ),
      child: Stack(
        children: [
          if (haveBack)
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(top: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/back.png"),
                  ),
                ),
              ),
            ),
          Center(
            child: Container(
              width: 114,
              height: 42,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/BansosKu.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
