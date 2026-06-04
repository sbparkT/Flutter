void main(){
  List<int> even=[2,4,6,8];
  List<int> odd=[1,3,5,7];
  
  //cascading operator ... 사용 ->연결기능
  print([even,odd]);
  print([...even,...odd]);
  print(even);
  print([...even]);//값을 빼내서 새롭게 리스트 생성
  print(even==[...even]); //메모리 주소를 비교하는 것  
  
}
