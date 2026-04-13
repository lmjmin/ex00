import 'dart:math';
import 'dart:io';
import 'package:ex00/person.dart';
import 'package:ex00/ex00.dart' as ex00;

void main(List<String> arguments){
  var person = Person();
  person.name = 'James';

  print('person name: ${person.name}');
  person.age = 10; // setter로 age 값을 설정 언더바를 지운 age로 접근 해서 값을 지정 하고 언더바 한것은 private로 접근해서 값을 지정 하는것임.
  print('person age: ${person.age}'); // getter로 age 값을 가져옴, 여기서 _age가 null 이면 0을 반환 하라는 소리임.
}

