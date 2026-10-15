import 'dart:io';

void main() {
  bool keepOrdering = true;

  while (keepOrdering) {
    print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");
    print("Please enter your pizza size (small, medium, or large):");
    String? pizzaSize = stdin.readLineSync();

    print("How many pizzas do you want of $pizzaSize?");
    int quantity = int.parse(stdin.readLineSync()!);

    int price = 0;

    switch (pizzaSize?.toLowerCase()) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print("Invalid size entered. Please try again.");
        continue; 
    }

    int totalPayment = price * quantity;
    print("Total payment: $totalPayment USD");

    print("Do you want to order another pizza? (yes/no):");
    String? response = stdin.readLineSync();
    if (response?.toLowerCase() != 'yes') {
      keepOrdering = false;
    }
  }
}