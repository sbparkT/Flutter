void main(){
  Operation operation=add;
  int result=operation(10,20,30);
  
  print(result);
  
  operation=subtract;
  int result2=operation(10,20,30);
  print(result2);
  
  //자주 사용하는 형태
  int result3=calculate(30,40,50,add);
  print(result3);
  
  int result4=calculate(30,40,50,subtract);
  print(result4);
  
}

//typedef :함수의 자료형을 내가 정의하는 작업 -> 이렇게 정의된 모습을 signature
typedef Operation=int Function(int x,int y ,int z);

//더하기 
int add(int x, int y, int z)=> x+y+z;
 
//빼기
int subtract(int x, int y, int z)=> x-y-z;

int calculate(int x,int y,int z, Operation operation){
  return operation(x,y,z);
  
}
