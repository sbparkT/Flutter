void main(){
  //map형태로 데이터 저장하는 것은 데이터 변형,위조 등의 위험 커->클래스로 관리하는 것이 안전 
  final List<Map<String,String>> ani=[
    {
      'name':"짱구",
      'group':"짱구는 못말려",
    },
    {
      'name':"철수",
      'group':'짱구는 못말려',
    },
    {
      'name':"하츄핑",
      'group':"캐치 티니핑",
    },
       {
      'name':"아자핑",
      'group':"캐치 티니핑",
       'test':'hi', //이런 이상한 값이 들어와도 에러상황x
    },
          {
      'name':"무셔핑",
      'group':"캐치 티니핑",
    },
  ];
  
  print(ani); 
  
  //위 list를 class로 변경 (1)
  final newani=ani.map((x)=>Animation(
  name:x['name']!,
  group:x['group']!,// ! : 이 key는 존재한다라는 것을 알려줌
  ),
 ).toList();
  
  print(newani);//(2) 확인 
  
  //override통해 개별요소로 바로 확인 가능 
  for (Animation a in newani){
    print(a.name);
    print(a.group);
    print(a.name);
  }
  
  final jjanggu=newani.where(
  (x)=>x.group=='짱구는 못말려',
  );
  
  print(jjanggu);
  
  //이 모든 과정 한번에 
  final result=ani.map(
  (x)=>Animation(
  name:x['name']!,
  group:x['group']!,
  ),
  ).where((x)=> x.group=='캐치 티니핑')
   .fold<int>(
  0,(prev,next)=>prev+next.name.length);
  
  print(result);
}
 class Animation{
   final String name;
   final String group;
   
   Animation({
     required this.name,
     required this.group,
   });
  
  //(3)살리기
  //@override 
  String toString(){
    //instance를 문자열로 변환하여 보여주는 기능 
    return 'Animation(name :$name,group:$group)';
  }
 }
