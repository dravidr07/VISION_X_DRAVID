import 'package:flutter/material.dart';

import '../data/sample_workers.dart';
import 'worker_profile.dart';

class WorkerList extends StatelessWidget {
  final String category;

  const WorkerList({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final workers = sampleWorkers
        .where((worker) => worker.category == category)
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text('$category Workers')),
      body: workers.isEmpty
          ? const Center(
              child: Text('No workers available in this category yet.'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: workers.length,
              itemBuilder: (context, index) {
                final worker = workers[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 14),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(worker.name),
                          subtitle: Text('${worker.experience} experience'),
                        ),
                        Text('Location: ${worker.location}'),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text(' ${worker.rating}'),
                            const Spacer(),
                            Text(
                              worker.isAvailable ? 'Available' : 'Busy',
                              style: TextStyle(
                                color: worker.isAvailable
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => WorkerProfile(worker: worker),
                              ),
                            ),
                            child: const Text('View Profile'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
