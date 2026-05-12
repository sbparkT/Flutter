void main() {
  double? num=4.0;
  print(num);
  num=2.0;
  print(num);
 // num=null;
  //print(num); 
  
  //num??=3.0; //NULL이면 3으로 바꿔라,null아닌 경우 x
  //print(num); 
  
  int num1=1;
  int num2=2;
  print(num1>num2);
  print(num1<num2);
  print(num1==num2);
  print(num1!=num2);
  print(num1>=num2);
  print(num1<=num2);
  
  int num3=1;
  print(num3 is int); //자료형 확인
  print(num3 is String); //자료형 확인
  print(num3 is! int); //자료형 확인
  print(num3 is! String); //자료형 확인
  
  //논리연산자 && and , || or
  bool result=12>10 &&1>0;
  print(result);
  
  bool result2=12>10 &&1>0;
  print(result2);
  
  bool result3=12>10 ||0>1;
  print(result3);
  
  bool result4=12>10 ||0>1;
  print(result4);
  
  bool result5=12<10 ||0>1;
  print(result5);
   
  
}
