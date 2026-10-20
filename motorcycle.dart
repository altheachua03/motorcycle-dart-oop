class Motorcycle {
  String brand;
  String model;
  int year;
  double _price;

  Motorcycle(this.brand, this.model, this.year, this._price);

  double getPrice() {
    return _price;
  }

  void setPrice(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    } else {
      print("Invalid price!");
    }
  }

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
    print("Price: PHP ${_price.toStringAsFixed(2)}");
    print("-------------------------");
  }
}

void main() {
  Motorcycle motorcycle1 = Motorcycle("Honda", "Click 125i", 2025, 81900.00);

  Motorcycle motorcycle2 = Motorcycle("Yamaha", "Mio Fazzio", 2025, 93900.00);

  List<Motorcycle> motorcycles = [motorcycle1, motorcycle2];

  print("MOTORCYCLE BRANDS");
  print("=========================");

  for (Motorcycle motorcycle in motorcycles) {
    motorcycle.displayInfo();
  }

  print("Encapsulation:");
  print("Original price: PHP ${motorcycle1.getPrice()}");

  motorcycle1.setPrice(85000.00);

  print("Updated price: PHP ${motorcycle1.getPrice()}");
}
