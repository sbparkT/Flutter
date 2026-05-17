void main(){
  //for loop
  //변수선언 ; 반복조건 ; 변수 변형
  for (int i=0;i<10;i++){
    print(i);  
  }
  
  int total=0;
  List<int> nums=[1,2,3,4,5,6];
  for (int i=0;i<nums.length;i++){
    total+=nums[i];
  }
  print(total);
  
  total=0;
  //for in loop
  for(int n in nums){
    print(n);
    total+=n;
  }
  
  print(total);
  print("*"*50);
  
  //while
  
  int k=0;
  while (k<10){//조건식을 가장 먼저검사-> 참인경우 반복문 실행 
    k+=1;
    print(k);
  }
  print("last $k");
  
  k=0;
  //do while (많이 사용안함)
  do {
   k+=1; //조건검사 없이 바로 무조건 do {}내용실행 -> 다음 while문 넘어가 조건식 검사
   print(k);
  }while(k<10);
  
  print("last $k");
  print("*"*50);

  //break
  int t=0;
  while (t<10){
    t+=1;
    if(t==5){
      break;//반복문 빠져나가기
    }
  }
  
  print(t);
  t=0;
  for (int i=0;i<10;i++){
    t+=1;
    if (t==5){
      break;
    }
  }
  print(t);
  
  //continue :현재 loop만 skip하고 다음 loop으로 넘어가기
  t=0;
  for (int i=0;i<10;i++){
    t+=1;
    if (t==5){
      continue; //5만 skip
    }
    print(t);
  }

  
}
