void main(){
  List<String> aespa=['카리나','닝닝','지젤','윈터','닝닝'];
  
  print(aespa);
  print(aespa.asMap());
  print(aespa.toSet());
  
  Map aespamap=aespa.asMap();
  print(aespamap.keys.toList());
  print(aespamap.values.toList());
  
  Set aespaset = Set.from(aespa);
  print(aespaset);
  print(aespaset.toList());
  
  //map기능을 사용해 함수 적용
  
  final newaespa=aespa.map((x){
    return '에스파 $x';
  });
  
  print(aespa);
  print(newaespa);
  print(newaespa.toList());
  
  final newaespa2=aespa.map((x)=>'에스파 $x');
  
  print(newaespa2.toList());
  
  //map을 쓰면 새로운 리스트가 생성됨
  print(aespa==aespa);
  print(aespa==newaespa);
  print(aespa==newaespa2);
  
  
  //활용사례 
  String number='12345';
  final parsed =number.split('').map((x)=> '$x.jpg').toList();
  print(parsed);
}
