import 'customer.dart';

class Room {
  int number;
  bool isBooked;
  Customer? bookedBy;

  Room(this.number) : isBooked = false, bookedBy = null;

  String getInfo() {
    String status = isBooked
        ? 'Booked by: ${bookedBy!.getInfo()}'
        : 'Available';
    return 'Room $number - $status';
  }
}
