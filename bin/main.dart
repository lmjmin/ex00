import 'dart:math';
import 'dart:io';
import 'package:ex00/person.dart';
import 'package:ex00/ex00.dart' as ex00;
import 'package:ex00/user.dart';

void main(List<String> arguments){
  var person = Person();
  person.name = 'James';

  print('person name: ${person.name}');
  person.age = 10; // setter로 age 값을 설정 언더바를 지운 age로 접근 해서 값을 지정 하고 언더바 한것은 private로 접근해서 값을 지정 하는것임.
  print('person age: ${person.age}'); // getter로 age 값을 가져옴, 여기서 _age가 null 이면 0을 반환 하라는 소리임.

  var person2 = Person.name('James');
  print(person2.name);

  Person person3 = Person.init('James', 30);
  print('person3 name: ${person3.name}');
  print('person3 age: ${person3.age}');

  var user = User(username: 'aaa');
  var user2 =User(username:'bbb',age:23);

  print(user.toString());
  
  print(user.username);
  print(user.age);
  print(user2.age);

}

