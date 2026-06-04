void main(){
  Map<String,String> avengers={
    'iron man':'아이언맨',
    'captain america':'캡틴 아메리카',
    'thor':"토르"
  };
  
  final result=avengers.map(
    (key,value)=> MapEntry(
      'avengers character $key',
      '어벤져스 캐릭터 $value',
    ),
  );
  
  print(avengers);
  print(result);
  
  //키값만 변경
  final keys=avengers.keys.map((x)=>'AVC $x');
  final values=avengers.keys.map((x)=>'어벤져스 $x');
  print(keys);
  print(values);
  print(avengers);
  
  ///////////////////////////////////////////
  Set aespaset={
    '카리나','닝닝','지젤','윈터',
  };
  

  Set newset=aespaset.map((x)=>'에스타 $x').toSet();
  print(newset);
}
