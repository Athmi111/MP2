import 'package:flutter/material.dart';
import 'package:mp2/blank_page.dart'; // Import the new blank page

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF140D2F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.notifications,
                      color: Colors.white, size: 30),
                  onPressed: () {
                    // Action for notification icon
                  },
                ),
              ),
              const SizedBox(height: 50),
              // AI and Cal buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton(context, "AI", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlankPage()),
                    );
                  }),
                  _buildActionButton(context, "Cal", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlankPage()),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xFF3813C2).withOpacity(0.5),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
