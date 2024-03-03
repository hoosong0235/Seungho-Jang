import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return ListView(
      children: [
        _buildHomeCard(textTheme),
      ],
    );
  }

  Padding _buildHomeCard(TextTheme textTheme) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 512 + 256,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              'assets/images/profiles/profile_1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: 512 + 256,
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Seungho Jang',
                  style: textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nMauris dapibus nisl eget ante convallis maximus.\nNulla efficitur ultricies ligula id venenatis.',
                  style: textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
