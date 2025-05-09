import 'package:task2_hotel_bookin_system/room.dart';

import 'customer.dart';

class Hotel {
  String name;
  List<Room> rooms;

  Hotel(this.name, int roomCount) : rooms = [] {
    for (int i = 0; i < roomCount; i++) {
      Room room = Room(i + 1);
      rooms.add(room);
    }
  }
  void bookRoom(int roomNumber, Customer customer) {
    for (Room room in rooms) {
      if (room.number == roomNumber && !room.isBooked) {
        room.isBooked = true;
        room.bookedBy = customer;
        print('✅ Room $roomNumber booked by ${customer.getInfo()}');
        return;
      }
    }
    print('❌ Room $roomNumber is not available.');
  }

  void showAvailableRooms() {
    print('\n🟢 Available Rooms:');
    for (Room room in rooms) {
      if (!room.isBooked) {
        print('Room ${room.number}');
      }
    }
  }

  void showBookings() {
    print('\n🔒 Booked Rooms:');
    for (Room room in rooms) {
      if (room.isBooked) {
        print(room.getInfo());
      }
    }
  }
}
