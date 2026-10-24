import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('WorkLink'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
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

            TextField(
              decoration: InputDecoration(
                hintText: 'Search for a service...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Our Services',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 18),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: services.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.4,
              ),
              itemBuilder: (context, index) {
                final service = services[index];

                return Card(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${service['name']} selected')),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          service['icon'] as IconData,
                          size: 35,
                          color: const Color(0xFF176B55),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          service['name'] as String,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
