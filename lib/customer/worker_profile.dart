import 'package:flutter/material.dart';

import '../models/worker_model.dart';
import 'booking_screen.dart';

class WorkerProfile extends StatelessWidget {
  final WorkerModel worker;

  const WorkerProfile({super.key, required this.worker});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Worker Profile')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(radius: 45, child: Icon(Icons.person, size: 45)),
          const SizedBox(height: 20),
          Text(
            worker.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(worker.category, textAlign: TextAlign.center),
          const SizedBox(height: 25),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Experience'),
            subtitle: Text(worker.experience),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Service Area'),
            subtitle: Text(worker.location),
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Demo Rating'),
            subtitle: Text('${worker.rating}'),
          ),
          ListTile(
            leading: const Icon(Icons.handyman),
            title: const Text('Skills'),
            subtitle: Text(worker.skills),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Verification'),
            subtitle: Text(worker.isVerified ? 'Verified' : 'Not yet verified'),
          ),
          const SizedBox(height: 25),
          ElevatedButton.icon(
            onPressed: worker.isAvailable
                ? () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BookingScreen(worker: worker),
                    ),
                  )
                : null,
            icon: const Icon(Icons.calendar_month),
            label: const Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
