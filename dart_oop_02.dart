void main() {
  Idol aespa= Idol( 
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  

  Idol bts=Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );

  print(aespa.firstmember);
  aespa.firstmember="제니";
  bts.firstmember="길동";
  
  print(aespa.firstmember);
  print(bts.firstmember);
  
}

class Idol{
  String name;
  List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용 [간결ver]
  Idol(this.name,this.members);

  //name parameter와 비슷한 느낌으로 객체 생성
  Idol.fromlist(List values):
    this.members=values[0],
    this.name=values[1];
  
  void sayhello(){
    print("안녕하세요 ${this.name}입니다");
  }
  
  void introduce(){
    print("저희 멤버는 ${this.members}가 있습니다");
  }
  
  //getter 데이터 가져올때 :<반환type get getter이름>
  String get firstmember{
    return this.members[0];
  }
  
  //setter 데이터 설정할 때
  //무조건 매개변수 1개 : <set setter이름(매개변수)>
  set firstmember(String name){ 
    this.members[0]=name; 
  }
  
  
  //getter, setter 사용하는 건 자유 &함수와의 차이는 그저 뉘앙스의 차이일 뿐
  //로직과 코드 구현이 많다면 함수를 사용하는 것 추천
  //final선언할 경우 setter 사용불가 ->현재 setter많이 사용안하는 추세 
}

////////////////////////////////////////////////////////////////
void main() {
  Idol aespa= Idol( 
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  

  Idol bts=Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );

  print(aespa.firstmember);
  aespa.firstmember="제니";
  bts.firstmember="길동";
  
  print(aespa.firstmember);
  print(bts.firstmember);
  
}

class Idol{
  final String name;
  final List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용 [간결ver]
  Idol(this.name,this.members);

  //name parameter와 비슷한 느낌으로 객체 생성
  Idol.fromlist(List values):
    this.members=values[0],
    this.name=values[1];
  
  void sayhello(){
    print("안녕하세요 ${this.name}입니다");
  }
  
  void introduce(){
    print("저희 멤버는 ${this.members}가 있습니다");
  }
  
  //getter 데이터 가져올때 :<반환type get getter이름>
  String get firstmember{
    return this.members[0];
  }
  
  //setter 데이터 설정할 때
  //무조건 매개변수 1개 
  set firstmember(String name){ 
    this.members[0]=name; //List의 개별 요소를 바꾸는 것은 가능 
  }
  
   set member(List<String> members){ 
    this.members=members; //List의 전체요소 변경은 불가능 ->  변경불가 의도와 어긋나 거의 사용x
  }
  
  
  //getter, setter 사용하는 건 자유 &함수와의 차이는 그저 뉘앙스의 차이일 뿐
  //로직과 코드 구현이 많다면 함수를 사용하는 것 추천
  //final선언할 경우 setter 사용불가 ->현재 setter많이 사용안하는 추세 
}
///////////////////////////////////////////////////////////////////////////////////////
//private : 외부 파일에서 해당 클래스,함수 등 사용불가능하게 만들기 -> 앞에 _ 붙이기 
void main() {
  _Idol aespa= _Idol( 
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  

  _Idol bts=_Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );

  print(aespa.firstmember);
  aespa.firstmember="제니";
  bts.firstmember="길동";
  
  print(aespa.firstmember);
  print(bts.firstmember);
  
}

class _Idol{
  final String _name;
  final List<String> _members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용 [간결ver]
  _Idol(this.name,this.members);

  //name parameter와 비슷한 느낌으로 객체 생성
  _Idol.fromlist(List values):
    this.members=values[0],
    this.name=values[1];
  
  void _sayhello(){
    print("안녕하세요 ${this.name}입니다");
  }
  
  void _introduce(){
    print("저희 멤버는 ${this.members}가 있습니다");
  }
  
  //getter 데이터 가져올때 :<반환type get getter이름>
  String get firstmember{
    return this.members[0];
  }
  
  //setter 데이터 설정할 때
  //무조건 매개변수 1개 
  set firstmember(String name){ 
    this.members[0]=name; //List의 개별 요소를 바꾸는 것은 가능 
  }
  
   set member(List<String> members){ 
    this.members=members; //List의 전체요소 변경은 불가능 ->  변경불가 의도와 어긋나 거의 사용x
  }
  
 
}
