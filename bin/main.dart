import 'dart:math';
import 'dart:io';
import 'package:ex00/ex00.dart' as ex00;


void main(List<String> arguments){
  var map1 = Map();
  var map2 = Map<int, String>();
  Map<String, int> map3 = Map();

  var person = {
    'name' : 'James',
    'age' : 10,
    'city' : 'Busan'
  };
  print(person['name']);
  print(person['gender']); // 존재하지 않는 키에 접근하면 null이 반환됨.

  person['name'] = 'James';
  print(person['name']); 
  // person['gender'] = 'man'; // 존재하지 않는 키에 값을 할당하면 새로운 키-값 쌍이 추가됨.
  // print(person['gender']);

  var value = person['xxx'] ?? 'default'; // null 병합 연산자(??) : 왼쪽 피연산자가 null이면 오른쪽 피연산자를 반환, 그렇지 않으면 왼쪽 피연산자를 반환.
  print(value); // 'default'가 출력됨.

  person.addAll({
    'phone': '010-1234-5678',
    'hobby': 'reading'
  });
  print(person);

  person.remove('phone');
  print(person['phone']); // null이 출력됨.


  print(person.containsKey('name')); // true, 'name' 키가 존재하므로 true가 나옴.
  print(person.containsValue('woman')); // false,

  person.forEach((key, value){
    print('key: $key, value: $value');
  }); 

  for(var key in person.keys){
    print(key);
  }

  for(var value in person.values){
    print(value);
  }

  var keylist = person.keys.toList(); // Map의 키를 List로 변환
  print(keylist);

  var valuelist = person.values.toList(); // Map의 값을 List로 변환
  print(valuelist);
}


