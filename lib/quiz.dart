import 'dart:io';
void quiz() {
    print('1. 1~10까지의 수를 출력하되 숫자 뒤에 짝수 또는 홀수가 표기 되도록 합니다. ex) 1은 짝수');
  for(int i = 1; i <= 10; i++){
    if(i % 2 ==0){
      print('$i는 짝수');
    } else {
      print('$i는 홀수');
    }
  }
  print('----------------------------------------------------------------');
  print('2. 1~50 까지의 수 중 3의 배수만 출력하고, 그 개수를 출력하세요.');
  int cnt=0;
  for(int i = 1; i<=50; i++){
    if(i%3 ==0){
      cnt++;
      print("3의 배수: $i");
    }
  }
  print("1~50까지의 수 중 3의 배수의 개수: $cnt");
  print('----------------------------------------------------------------');
  print('3. 변수에 설정한 값(정수 : n)만큼 1부터 n 까지의 합계를 계산 하세요.(for, while둘다 사용)');
  int n=30;
  int sum=0;
  for(int i=0;i<n;i++){
    sum+=i;
  }
  print('for문을 이용한 1부터 $n 까지의 합계: $sum');
  sum = 0;
  int j=0;
  while(j<n){
    sum+=j;
    j++;
  }
  print('while문을 이용한 1부터 $n 까지의 합계: $sum');
  print('----------------------------------------------------------------');
  print('4. 구구단 2단~9단까지 출력하되 결과가 30보다 큰 경우 "over30"를 함께 출력하세요.');
  for(int i=2;i<=9;i++){
    print('-------------$i 단---------------');
    for(int j = 1; j<=9; j++){
      int result = i*j;
      if(result > 30){
        print('$i x $j = $result over30');
      } else {
        print('$i x $j = $result');
      }
    }
  }
  print('----------------------------------------------------------------');
  print('5. 주어진 값(변수에 값 설정 - 정수)이 소수(prime number)인지 판별하세요.');
  print('* 소수: 1과 자기 자신으로만 나누어지는 수');
  List<int> num = [13,20,25,29];
  bool tf;
  for(int i=0;i<num.length;i++){
    tf = true;
    for (int j = 2; j*j <= num[i]; j++){
      if(num[i] % j ==0){
        tf=false;
        break;
      }
    }
    if(tf){
      print('${num[i]}는 소수입니다.');
    } else {
      print('${num[i]}는 소수가 아닙니다.');
    }
  }

  print('----------------------------------------------------------------');
  print("6. 다음 모양을 출력하세요. (n=5일때):");
        //     *
        //    ***
        //   *****
        //  *******
        // *********
  n=5;
  for(int i=1;i<=n;i++){
    for(int j=0; j < n-i; j++){
      stdout.write(' ');
    }
    for(int j=0; j < i*2 - 1; j++){
      stdout.write('*');
    }
    print('');
  }
   print('----------------------------------------------------------------');
  print('7. 1부터 100까지 출력하되: ');
  print(' - 3의 배수 -> "Fizz"');
  print(' - 5의 배수 -> "Buzz"');
  print(' - 7의 배수 -> "Bang"');
  print(' - 공통 배수 (예: 3과 5의 공배수) -> "FizzBuzz"(우선순위: 3,5,7 모든 조합 처리)');
  for(int i=1;i<=100;i++){
    String output = '';
    if(i % 3 == 0){
      output += 'Fizz';
    }
    if(i % 5 == 0){
      output += 'Buzz';
    }
    if(i % 7 == 0){
      output += 'Bang';
    }
    if(output.isEmpty){
      print(i);
    } else {
      print(output);
    }
  }

  print("----------------------------------------------------------------");
  print("8. 주어진 문자열이 회문인지 판별하기(회문: 뒤집어도 같은 문자열)");
  // List<String> src = ['a','b','c','b','a'];
  String s = 'abcbc';
  List<String> src = s.split(''); // 문자열을 문자 단위로 분리 하여 리스트 변환 하는 작업
  List<String> reverseStr = [];
  bool tf2=true;
  for(int i=s.length-1; i>=0; i--){
    reverseStr.add(src[i]);
  }
  for(int i = 0; i < s.length; i++){
    if(src[i] != reverseStr[i]){
      tf2=false;
      break;
    }
  }
  if(tf2){
    print("$s 는 회문입니다.");
  }else{
    print("$s 는 회문이 아닙니다.");
  }

}