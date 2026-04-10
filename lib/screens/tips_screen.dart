import 'package:flutter/material.dart';
import '../models/tip.dart';

class TipsScreen extends StatelessWidget {
  TipsScreen({super.key});

  final List<Tip> _tips = [
    Tip(
      id: '1',
      title: 'Stay Hydrated',
      description: 'Drink at least 8 glasses of water a day to keep your body functioning at its best.',
      imageUrl: 'https://images.unsplash.com/photo-1548919973-5cdf5916ad52?w=500&q=80',
    ),
    Tip(
      id: '2',
      title: 'Regular Sleep',
      description: 'Getting 7-9 hours of quality sleep is crucial for muscle recovery and mental health.',
      imageUrl: 'https://images.unsplash.com/photo-1541480601022-2308c0f02487?w=500&q=80',
    ),
    Tip(
      id: '3',
      title: 'Eat Proteins',
      description: 'Protein is essential for muscle repair and growth. Include eggs, meat or beans in your diet.',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=500&q=80',
    ),
    Tip(
      id: '4',
      title: 'Morning Yoga',
      description: 'Start your day with some stretching or yoga to improve flexibility and reduce stress.',
      imageUrl: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=500&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _tips.length,
      itemBuilder: (ctx, index) {
        final tip = _tips[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/tip-detail', arguments: tip),
            child: Hero(
              tag: tip.id,
              child: Card(
                elevation: 4,
                shadowColor: Colors.black26,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(tip.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.8),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tip.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Tap to learn more',
                            style: TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
