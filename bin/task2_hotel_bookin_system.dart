
import 'package:task2_hotel_bookin_system/customer.dart';
import 'package:task2_hotel_bookin_system/hotel.dart';

void main() {
  Hotel hotel = Hotel('Sunrise Hotel', 5);
  Customer customer1 = Customer('sara', '01000990009');
  Customer customer2 = Customer('nora', '01000990009');

  hotel.bookRoom(2, customer1);
  // hotel.showAvailableRooms();
  // hotel.showBookings();

  hotel.bookRoom(3, customer2);
  hotel.showAvailableRooms();
  hotel.showBookings();
}
