class Customer {
  String name;
  String phone;

  Customer(this.name, this.phone);

  String getInfo() {
    return 'Name: $name, Phone: $phone';
  }
}
