
late String dasc; // late : 변수 선언 시 초기값을 나중에 할당할 수 있도록 허용하는 키워드.
void classes(){
    // print('Hello world: ${ex00.calculate()}!');
  dasc='aaa';
  String? s;
  // s = "hello";
  s ??= "널입니다";
  print(s);
  int len = stringLength(s);
  print(len);

  // String? nullableName = 'James';
  String? nullableName = 'Alice';
  String name = nullableName!; // null이 아니라고 단언
  print(name); //Alice

  const int r = 10;
  final now = DateTime.now();  
  final day = now.day;
  // day = 20;

  var x = 10; // var : 변수를 선언하면 타입 변경이 불가능 한 변수.
  print(x);
  // x='hello'; // x는 정수형 변수로 선언되었음. 따라서 문자열을 할당할 수 없음.
  
  dynamic y = 20; // dynamic : 변수의 타입을 자유자재로 변경할 수 있는 변수.
  print(y);
  y='hello';

  Object a = 'hello'; // Object : 모든 Dart 객체의 슈퍼클래스. 모든 타입의 값을 저장할 수 있지만, 해당 값에 접근하려면 명시적 형변환이 필요.
  if(a is String){ //a가 String 타입이면 true
    print('문자열');
  }

  if(a is! num){ //a가 숫자(num)가 아니면 true  
    print('숫자 아님');
  }

  String b = a as String;  //a를 String으로 강제 변환
  print(b.toUpperCase()); // toUpperCase() : 문자열을 대문자로 변환하는 메서드.

  // 변수 = 값;
  int xx = f(1,2);
  print(xx);

  print (f1(1,2)); 
  print (f1(10)); // n2는 선택 매개변수이므로 기본값 1이 사용됨. 결과는 2.

  f2('James',age: 30, gender: 'man');
  f2('James',age: 20);
  // f2('James'); //required: age는 필수 매개 변수로 정의 되어 있기때문에 age 값이 없으면 에러발생.

  for(int i=0; i<10; i++){
    print(i);
  }
  int cnt = 5;
  while(cnt > 0){
    print(cnt);
    cnt--;
  }

  // 배열 -> List
  List<String> fruits = ['사과','바나나','메론'];

  print(fruits[0]); // 사과
  print(fruits[1]); // 바나나
  print(fruits[2]); // 메론

  fruits[1] = '블루베리';
  print(fruits); 

  for(int i = 0; i < fruits.length; i++){
    print('$i번째 과일 : ${fruits[i]}');
  }

  // print(fruits[5]); // 에러가 뜨는 이유는 fruits 리스트에 3개만 있기 때문에 인덱스 5는 존재하지 않아서 에러가 발생함.
  for(String fruit in fruits){
    print(fruit);
  }

  List<int> lst =[1,2,3];
  print(lst.length);
  print(lst[0]);
  lst.add(4); // 리스트에 요소 4가 추가됨
  lst.addAll([5,6]); //[1,2,3,4,5,6]
  lst.insert(2,99); // 인덱스 2에 99가 삽입됨. [1,2,99,3,4,5,6]
  lst.remove(99); // lst.removeAt(2); // 인덱스 2에 있는 요소가 제거됨. [1,2,3,4,5,6]
  lst.removeAt(0); // 인덱스 0에 있는 요소가 제거됨. [2,3,4,5,6]
}


int stringLength(String s) { 
    return s.length;
  
}

// 함수 매개변수(required positional parameter)
// 함수를 호출할 때 반드시 값을 전달해야 하는 매개변수. 함수 정의에서 매개변수 이름과 타입을 명시하여 정의하며, 함수 호출 시 해당 매개변수에 값을 전달해야 함.
int f(int n1, int n2){
  return n1+n2;
}

//선택 매개변수(optional positional parameter) 
// 있어도 되고 없어도 됨. 대괄호([])로 감싸서 정의하며, 기본값을 지정할 수 있음.
int f1(int n1,[int n2 = 1]){
  return n1 + n2;
}

// 이름 있는 파라미터(named parameter) 
// 이름 붙여서 전달, 중괄호 ({})로 감싸서 정의 하고 required 키워드로 필수 매개변수로 지정할 수 있음. 기본값도 지정 가능. 
void f2(String name,{required int age, String gender = 'unknown'}){
  print('name: $name, age: $age, gender: $gender');
}

void calculate(){
  print('5더하기 1: ${add(5)}');
  print('5빼기 1: ${sub(5)}');
  print('5곱하기 1: ${mul(5)}');
  print('5나누기 1: ${div(5)}');

  print('5더하기 3: ${add(5,3)}');
  print('5빼기 3: ${sub(5,3)}');
  print('5곱하기 3: ${mul(5,3)}');
  print('10나누기 2: ${div(10,2)}');
}


int add(int n1, [int n2=1]){
  return n1 + n2;
}

int sub(int n1,[int n2 = 1]){
  return n1 - n2;
}

int mul(int n1,[int n2 = 1]){
  return n1 * n2;
}

int div(int n1,[int n2 = 1]){
  return n1 ~/ n2; 
}

  //test 함수 - 필수 매개변수(int), 매개변수 2: 필수 매개변수(널 허용: 문자열)
  void test(int n1, String? n2){
    print("test : $n1, $n2");
  }

  //test2 함수 - 필수 매개변수(int), 매개변수 2: 선택 매개변수(널 허용: 문자열)
  void test2(int n1, [String? n2]){
    print("test2 : $n1, $n2");
  }

  //test3 함수 - 필수 매개변수(int), 매개변수 2: 네임드 파라미터(널 허용: 문자열, 필수), 매개변수 3 :네임드 파라미터(기본값 true, 필수가 아님)
  void test3(int n1,{required  String? n2,tf = true}){
    print("test3 : $n1, $n2, $tf");
  }

  void testmain(){
      print('----------------------------------------------------------------');
    print('함수 매개변수 - 필수 매개변수, 선택 매개변수, 네임드 파라미터');
    test(10, 'hello');
    test2(10);
    test2(10, 'world');
    test3(10,n2:null,tf:false);
    test3(10,n2:'hello');
  }