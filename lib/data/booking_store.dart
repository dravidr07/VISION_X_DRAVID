import 'package:flutter/foundation.dart';

class Booking {
  final String workerName;
  final String service;
  final String customerName;
  final String phone;
  final String address;
  final String description;
  final DateTime date;
  String status;

  Booking({
    required this.workerName,
    required this.service,
    required this.customerName,
    required this.phone,
    required this.address,
    required this.description,
    required this.date,
    this.status = 'Pending',
  });
}

class BookingStore extends ChangeNotifier {
  static final BookingStore instance = BookingStore._();

  BookingStore._();

  final List<Booking> bookings = [];

  void addBooking(Booking booking) {
    bookings.add(booking);
    notifyListeners();
  }

  void updateStatus(Booking booking, String status) {
    booking.status = status;
    notifyListeners();
  }
}
