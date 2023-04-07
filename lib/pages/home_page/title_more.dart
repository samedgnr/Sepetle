import 'package:flutter/material.dart';

import '../more_page.dart';

class TitleMore extends StatelessWidget {
  const TitleMore({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Stack(
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            const Spacer(),
            FloatingActionButton(
              heroTag: title,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MorePage();
                }));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.green,
              child: const Text(
                "More",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
