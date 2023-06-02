import 'package:flutter/material.dart';

class CombindedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double? padding;

  const CombindedButton({
    super.key,
    required this.text,
    required this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('test'),
                  leading: IconButton(
                    icon: const Icon(Icons.back_hand),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                body: const Center(
                  child: Text('Hey'),
                ),
              );
            },
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Padding(padding: EdgeInsets.symmetric(horizontal: padding ?? 4)),
          Text(text),
        ],
      ),
    );
  }
}
