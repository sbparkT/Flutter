void main(){
  //if 문 
  int num=5;
  /*if (num%2==0) {
    print("나머지가 0");
  }
  else{
    print("나머지가 1");
  }*/
  
  // if elseif else 문 
  if (num%2==0) {
    print("나머지가 0");
  }
  else if (num%3==2){
    print("나머지가 2");
  }
  else{
    print("나머지가 1");
  }
  
  
  //위와 동일한 코드를 switch문으로 
  switch(num%3){
    case 0:
      print("나머지가 0");
      break;
    case 1:
      print("나머지가 1");
      break;
    default: //else와 동일한 역할
      print("나머지가 2");
      break;
  }
  
  
  
}
