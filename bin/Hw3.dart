void main() {
  //FizzBuzz

  print('--- FizzBuzz ---');
  for (int i = 1; i <= 30; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }

  //Положительные числа
  print('\n--- Positive Numbers ---');
  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];

  int count = 0;
  int sum = 0;

  for (int num in numbers) {
    if (num > 0) {
      count++;
      sum += num;
    }
  }

  if (count > 0) {
    double average = sum / count;
    print('Positive numbers count: $count');
    print('Average of positive numbers: $average');
  } else {
    print('No positive numbers.');
  }

  //Магазин фруктов
  print('\n--- Fruit Shop ---');
  Map<String, int> fruits = {
    'Apple': 5,
    'Banana': 2,
    'Mango': 7,
    'Orange': 0,
  };

  fruits.forEach((fruit, quantity) {
    if (quantity > 0) {
      print('Available: $fruit ($quantity pcs)');
    }
  });
}
