class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get getName {
    return _name;
  }

  int get getAge {
    return _age;
  }

  set name(String name) {
    _name = name;
    print('Nome alterado');
  }

  set age(int age) {
    _age = age;
  }
}

void main() {
  Person primeiro = Person('A', 10);

  print('Nome: ${primeiro.getName}');
  print('Nome: ${primeiro.getAge}');

  primeiro.name = 'B';
  primeiro.age = 15;

  print('Nome: ${primeiro.getName}');
  print('Nome: ${primeiro.getAge}');
}
