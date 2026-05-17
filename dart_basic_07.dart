void main() {
 //list<type> :<>은 generic이라부름
 //list :중복저장가능
  List<String> aespa=['카리나','닝닝','지젤','윈터'];
  //List<String> aespa=['카리나','닝닝','지젤','윈터',2]; error
  List<int> numbers=[1,2,3,4,5,6];
  
  print(aespa);
  print(numbers);
  
  //index로 개인데이터 접근
  print(aespa[0]);
  print(aespa[1]);
  
  print(aespa.length); //길이,개수 구하기
  //추가
  aespa.add('제니');
  print(aespa);
  //삭제
  aespa.remove('제니');
  print(aespa);
  //찾는 데이터가 몇 번 index에 위치하냐
  print(aespa.indexOf('닝닝'));
  
  print("*"*50);
  //////////////////////////////////////////////
  //map :파이썬의 딕셔너리와 유사 
  // key & value로 접근  <key type , value type>
  Map<String,String> avengers={
    "ironman":"tony stark", //key : value
    "captain america":"steve rogers",
    "blackwidow":"natasha romanoff",
  };
  
  print(avengers);
  
   Map<String,bool> isavengers={
    "ironman":true,
    "captain america":true,
    "harry potter":false,
  };
  
  print(isavengers);

 //전체 추가
 isavengers.addAll(
   {
     'spiderman':true,
     'superman':false
   });
  
  print(isavengers);
  
  //키값으로만 접근 
  print(avengers['ironman']);
  
  //추가
  isavengers['hulk']=true;
  print(isavengers);
  
  //변경가능
  isavengers['harry potter']=true;
  print(isavengers);
  
  //삭제 
  isavengers.remove('harry potter');
  print(isavengers);
  
  print(isavengers.keys);
  print(isavengers.values);
  print("*"*50);

  
  ////////////////////////////////////
  //set : list와 유사하나 중복이 불가능함. 자동으로 중복 처리 
  final Set<String> names={
    "짱구",
    "철수",
    "유리",
    "훈이",
    "맹구",
    "철수",
  };
  
  print(names); //자동 중복된 데이터 삭제
  names.add("흰둥이");
  print(names);
  names.remove('훈이');
  print(names);
  print(names.contains('철수')); //포함하고있는지
  
  
  
}
