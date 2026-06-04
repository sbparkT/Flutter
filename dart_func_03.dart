void main(){
  List<Map<String,String>> ani=[
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
    },
          {
      'name':"무셔핑",
      'group':"캐치 티니핑",
    },
  ];
  //where는 컬렉션(List, Set 등)에서 특정 조건에 맞는 데이터만 골라내어 필터링하는 함수
  //true는 살리고 false는 삭제 ->필터링 기능!
  
  print(ani);
  final jjangu=ani.where((x)=>x['group']=='짱구는 못말려').toList();
  final teenieping=ani.where((x)=>x['group']=='캐치 티니핑').toList();
  
  print(jjangu);
  print(teenieping);
}
