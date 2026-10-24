import 'package:flutter/material.dart';

import 'customer/customer_home.dart';
import 'worker/worker_home.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.handyman, size: 85, color: Color(0xFF176B55)),
              const SizedBox(height: 20),
              const Text(
                'WorkLink',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Connecting customers with trusted local workers',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              const Text(
                'How would you like to continue?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 25),
              ElevatedButton.icon(
                icon: const Icon(Icons.person),
                label: const Text("I'm a Customer"),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CustomerHome()),
                ),
              ),
              const SizedBox(height: 15),
              OutlinedButton.icon(
                icon: const Icon(Icons.engineering),
                label: const Text("I'm a Worker"),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const WorkerHome()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
