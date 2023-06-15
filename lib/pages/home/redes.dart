import 'package:flutter/material.dart';

class Redes extends StatelessWidget {
  const Redes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(height: 500),
        Image.asset(
          'assets/lojas.png',
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                'assets/youtube.png',
                color: Colors.black,
              ),
            ),
            Image.asset(
              'assets/whatsapp.png',
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/facebook.png',
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/instagram.png',
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/lv.png',
              height: 80,
              width: 80,
            ),
          ],
        ),
      ],
    );
  }
}
