/*addnumbers(){
  dart언어는 전체를 미리 훑어보면서 컴파일러가 동작되어서 main 위,아래 어디든 함수 위치가능
}*/

void main(){ 
  //main또한 함수
  //addnumbers();
  //addnumbers(10,20,30) ; //선언한 순서대로 값 할당
  addnumbers(10); //x에만 값 전달, y와 z가 생략된경우 이미 있는 기본값으로 자동할당
  addnumbers(10,20,30); //x에만 값 전달, y와 z가 새로운 값으로 할당가능
  addnumbers2(x:10,y:20,z:30); //이름을 정해두었기때문에 이름을 알려줘야해
  addnumbers2(y:20,z:30,x:10); //이름을 정해두었기때문에 이름을 알려줘야해,순서 상관없음
  addnumbers2(x:10,y:50);
  
  addnumbers4(10,y:70);
}

//함수 생성 : 세 개의 숫자를 더해 짝홀수 판별하는 함수 
/*addnumbers(){
  int x=10;
  int y=20;
  int z=30;
  int sum=x+y+z;
  print("x: $x");
  print("y: $y");
  print("z: $z");
  
  if (sum%2==0){
    print("짝수");
  }else{
    print("홀수");
  }
}*/

//parameter=argument=매개변수
//positioanl parameter 순서가 중요한 파라미터
//optional parameter 있어도 되고,없어도 되는 파라미터 []
addnumbers(int x, [int y=30, int z=40]){
  int sum=x+y+z;
  print("x: $x");
  print("y: $y");
  print("z: $z");
  
  if (sum%2==0){
    print("짝수");
  }else{
    print("홀수");
  }
}

//named parameter 이름이 있는 파라미터 (순서가 중요하지 않다)
addnumbers2({ //void생략된것
  required int x,//required는 필수인 파라미터
  required int y,
  //required int z, 
  int z=40,//required생략시 선택적으로 동작되는 optional parameter 가능
}) {
  int sum=x+y+z;
  print("x: $x");
  print("y: $y");
  print("z: $z");
  
  if (sum%2==0){
    print("짝수");
  }else{
    print("홀수");
  }
}


//void : 공허 ,반환할 겂 없음
//반환하고싶은 type을 함수이름에 작성
int addnumbers3(){
  int sum=0;
  return sum;
}

//positional +names parameter혼합
addnumbers4(int x,{ //void생략된것
  required int y,
  //required int z, 
  int z=40,//required생략시 선택적으로 동작되는 optional parameter 가능
}) {
  int sum=x+y+z;
  print("x: $x");
  print("y: $y");
  print("z: $z");
  
  if (sum%2==0){
    print("짝수");
  }else{
    print("홀수");
  }
}


//arrow function 화살표함수 :반환하고 싶은것을 화살표 옆에
int addnumbers5(int x,{
  required int y,
  int z=30,
})=> x+y+z;



