import 'package:flutter/material.dart';

import '../data/booking_store.dart';
import '../models/worker_model.dart';

class BookingScreen extends StatefulWidget {
  final WorkerModel worker;

  const BookingScreen({super.key, required this.worker});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final description = TextEditingController();

  DateTime? selectedDate;

  @override
  void dispose() {
    name.dispose();
    phone.dispose();
    address.dispose();
    description.dispose();
    super.dispose();
  }

  Future<void> chooseDate() async {
    final now = DateTime.now();

    final result = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );

    if (result != null) {
      setState(() => selectedDate = result);
    }
  }

  void submitBooking() {
    if (!formKey.currentState!.validate()) return;

    if (selectedDate == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Please select a date')));
      return;
    }

    BookingStore.instance.addBooking(
      Booking(
        workerName: widget.worker.name,
        service: widget.worker.category,
        customerName: name.text.trim(),
        phone: phone.text.trim(),
        address: address.text.trim(),
        description: description.text.trim(),
        date: selectedDate!,
      ),
    );

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Booking Submitted!'),
        content: const Text(
          'Your service request has been created successfully. '
          'The worker can now review it in the demo dashboard.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              Navigator.pop(context);
            },
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book a Service')),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Booking ${widget.worker.name}',
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                labelText: 'Customer Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Enter your name'
                  : null,
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: phone,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Enter phone number'
                  : null,
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: address,
              maxLines: 2,
              decoration: const InputDecoration(
                labelText: 'Service Address',
                border: OutlineInputBorder(),
              ),
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Enter your address'
                  : null,
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: description,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Describe Your Problem',
                border: OutlineInputBorder(),
              ),
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Describe the required service'
                  : null,
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: chooseDate,
              icon: const Icon(Icons.calendar_month),
              label: Text(
                selectedDate == null
                    ? 'Select Service Date'
                    : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: submitBooking,
              child: const Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
