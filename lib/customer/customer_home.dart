import 'package:flutter/material.dart';

import 'worker_list.dart';

class CustomerHome extends StatelessWidget {
  const CustomerHome({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {'name': 'Electrician', 'icon': Icons.electrical_services},
      {'name': 'Plumber', 'icon': Icons.plumbing},
      {'name': 'Carpenter', 'icon': Icons.handyman},
      {'name': 'Painter', 'icon': Icons.format_paint},
      {'name': 'Cleaner', 'icon': Icons.cleaning_services},
      {'name': 'Mechanic', 'icon': Icons.build},
      {'name': 'AC Repair', 'icon': Icons.ac_unit},
      {'name': 'Other Services', 'icon': Icons.more_horiz},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('WorkLink')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, Customer!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('What service do you need today?'),
            const SizedBox(height: 25),
            const Text(
              'Our Services',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: GridView.builder(
                itemCount: services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (context, index) {
                  final service = services[index];
                  final category = service['name'] as String;

                  return Card(
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WorkerList(category: category),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            service['icon'] as IconData,
                            size: 35,
                            color: const Color(0xFF176B55),
                          ),
                          const SizedBox(height: 10),
                          Text(category, textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
