class Person{
  late String name;
  int? _age; //private(언더바) getter/setter로 접근

  Person(){
    print('생성자 호출...');
  }

  set age(int age) => _age = age; //setter인데 void로 반환값이 없기 때문에 생략 하고 age(int age) => _age = age;로 작성할 수 있다.
  int get age => _age ?? 0; // getter인데 반환값아 있기 때문에 int 값을 명시 해야 한다. 여기서 ?? 0 은 _age가 null 이면 0을 반환 하라는 소리임.
  
}