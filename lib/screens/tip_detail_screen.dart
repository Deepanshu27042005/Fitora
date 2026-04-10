import 'package:flutter/material.dart';
import '../models/tip.dart';

class TipDetailScreen extends StatelessWidget {
  const TipDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tip = ModalRoute.of(context)!.settings.arguments as Tip;

    return Scaffold(
      appBar: AppBar(title: Text(tip.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: tip.id,
              child: Image.network(tip.imageUrl, fit: BoxFit.cover, width: double.infinity, height: 300),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tip.title, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 16),
                  Text(tip.description, style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
