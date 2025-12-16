void main() {
  // 1️⃣ Моя визитка
  String name = "Oomat";
  int age = 22;
  String city = "Bishkek";
  String profession = "Student";
  String hobby = "coding";

  print("Hello! My name is $name");
  print("I am $age years old and I live in $city");
  print("My profession is $profession");
  print("In my free time, I enjoy $hobby");

  print("");

  // 2️⃣ Расчёт дохода
  int salary = 50000;
  int incomeYear = salary * 12;
  double incomeWithBonus = incomeYear + incomeYear * 0.1;

  print("My yearly income: $incomeYear SOM");
  print("My yearly income with 10% bonus: $incomeWithBonus SOM");

  print("");

  // 3️⃣ Работа со строкой
  String text = " Knowledge is power, but practice makes perfect. ";

  print(text.trim());
  print(text.trim().toUpperCase());
  print(text.trim().replaceAll("practice", "experience"));
  print(text.contains("power"));

  print("");

  // 4️⃣ Яблоки
  int apples = 10;
  int people = 4;

  print("Each person gets ${apples ~/ people} apples");
  print("Apples left: ${apples % people}");

  print("");

  // 5️⃣ Год рождения
  int currentYear = 2025;
  int myAge = 22;

  print("I was born in ${currentYear - myAge}");

  print("");

  // 6️⃣ var, final, const
  var myCity = "Bishkek";
  final country = "Kyrgyzstan";
  const planet = "Earth";

  myCity = "Bishkek";

  print("City: $myCity");
  print("Country: $country");
  print("Planet: $planet");

  // final и const нельзя изменять после объявления
}
