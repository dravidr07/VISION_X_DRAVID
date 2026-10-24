import 'package:flutter/material.dart';

import '../data/booking_store.dart';

class WorkerHome extends StatefulWidget {
  const WorkerHome({super.key});

  @override
  State<WorkerHome> createState() => _WorkerHomeState();
}

class _WorkerHomeState extends State<WorkerHome> {
  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Worker Dashboard')),
      body: AnimatedBuilder(
        animation: BookingStore.instance,
        builder: (context, _) {
          final bookings = BookingStore.instance.bookings;

          final completed = bookings
              .where((booking) => booking.status == 'Completed')
              .length;

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Welcome, Worker!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Demo dashboard: displays all submitted bookings.'),
              const SizedBox(height: 20),
              Card(
                child: SwitchListTile(
                  title: const Text('Available for Work'),
                  value: isAvailable,
                  onChanged: (value) {
                    setState(() => isAvailable = value);
                  },
                ),
              ),
              const SizedBox(height: 15),
              Card(
                child: ListTile(
                  title: const Text('Total Requests'),
                  trailing: Text('${bookings.length}'),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Completed Jobs'),
                  trailing: Text('$completed'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Incoming Job Requests',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              if (bookings.isEmpty)
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'No bookings yet. Submit a booking from the customer dashboard.',
                    ),
                  ),
                ),
              for (final booking in bookings)
                Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          booking.service,
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('Worker: ${booking.workerName}'),
                        Text('Customer: ${booking.customerName}'),
                        Text('Phone: ${booking.phone}'),
                        Text('Address: ${booking.address}'),
                        Text('Problem: ${booking.description}'),
                        Text(
                          'Date: ${booking.date.day}/${booking.date.month}/${booking.date.year}',
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Status: ${booking.status}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        if (booking.status == 'Pending')
                          Wrap(
                            spacing: 8,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  BookingStore.instance.updateStatus(
                                    booking,
                                    'Accepted',
                                  );
                                },
                                child: const Text('Accept'),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  BookingStore.instance.updateStatus(
                                    booking,
                                    'Rejected',
                                  );
                                },
                                child: const Text('Reject'),
                              ),
                            ],
                          ),
                        if (booking.status == 'Accepted')
                          ElevatedButton(
                            onPressed: () {
                              BookingStore.instance.updateStatus(
                                booking,
                                'Completed',
                              );
                            },
                            child: const Text('Mark Completed'),
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
