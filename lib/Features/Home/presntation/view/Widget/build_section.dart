import 'package:flutter/material.dart';

import 'build_item.dart';

class BuildSection extends StatelessWidget {
  const BuildSection({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return const BuildCustomItem();
              }),
        )
      ],
    );
  }
}
