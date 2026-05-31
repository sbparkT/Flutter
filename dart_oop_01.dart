void main() {
  Idol aespa= Idol();
  print(aespa.name);
  print(aespa.memebers);
  aespa.sayhello();
  aespa.introduce();
  
}

class Idol{
  String name ='에스파';
  List<String> memebers=['카리나','닝닝','지젤','윈터'];
  
  void sayhello(){
    print("안녕하세요 에스파입니다");
  }
  
  void introduce(){
    print("저희 멤버는 4명입니다");
  }
}
//////////////////////////////////
void main() {
  Idol aespa= Idol(
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  
  //다른 아이돌 만들어 보기
  
  
}

class Idol{
  String name;
  List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용
  Idol(String name,List<String> members):
    this.name=name,
    this.members=members; 
  
  void sayhello(){
    print("안녕하세요 에스파입니다");
  }
  
  void introduce(){
    print("저희 멤버는 4명입니다");
  }
}
////////////////////////////////////////
void main() {
  Idol aespa= Idol(
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  
  //다른 아이돌 만들어 보기
  
  
}

class Idol{
  String name;
  List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용
  Idol(String name,List<String> members):
    this.name=name,
    this.members=members; 
  
  void sayhello(){
    print("안녕하세요 ${this.name}입니다");
  }
  
  void introduce(){
    print("저희 멤버는 ${this.members}가 있습니다");
  }
}
///////////////////////////////////////////

void main() {
  Idol aespa= Idol(
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  
  //다른 아이돌 만들어 보기
  
  
}

class Idol{
  String name;
  List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용 [간결ver]
  Idol(this.name,this.members);

  
  void sayhello(){
    print("안녕하세요 ${this.name}입니다");
  }
  
  void introduce(){
    print("저희 멤버는 ${this.members}가 있습니다");
  }
}

/////////////////////////////////////
void main() {
  Idol aespa= Idol(
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  
  Idol bts=Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );
  print(bts.name);
  print(bts.members);
  bts.sayhello() ;
  bts.introduce();
  
}

class Idol{
  String name;
  List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용 [간결ver]
  Idol(this.name,this.members);

  //name parameter와 비슷한 느낌으로 객체 생성 ->name constructor   [2가지 방법 중 자유롭게 선택하여 생성]
  Idol.fromlist(List values):
    this.members=values[0],
    this.name=values[1];



  void sayhello(){
    print("안녕하세요 ${this.name}입니다");
  }
  
  void introduce(){
    print("저희 멤버는 ${this.members}가 있습니다");
  }
}

//////////////////////////////////////////////////
void main() {
  Idol aespa= Idol(
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  
  aespa.name='에스파짱';  //자유롭게 변경 가능 ->함부로 변수값들 변경 위험 ->final 선언으로 변경 못하게
  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  
  Idol bts=Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );
  print(bts.name);
  print(bts.members);
  bts.sayhello() ;
  bts.introduce();
  
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
}

/////////////////////////////////////////////////////
void main() {
  Idol aespa= const Idol( //const변경불가 &빌드타임할당
    //DateTime.now().toString(), //error ->const 선언가능한 변수들로만 구성되겠금 
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  
  aespa.name='에스파짱';  //자유롭게 변경 가능 ->함부로 변수값들 변경 위험 ->final 선언으로 변경 못하게
  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  
  Idol bts=Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );
  print(bts.name);
  print(bts.members);
  bts.sayhello() ;
  bts.introduce();
  
}

class Idol{
  final String name;
  final List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용 [간결ver]
  const Idol(this.name,this.members);

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
}

////////////////////////////////////////////////
//값 비교
void main() {
  Idol aespa= Idol( 
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  
  Idol aespa2= Idol( 
  '에스파',
  ['카리나','닝닝','지젤','윈터']);

  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  print(aespa==aespa2);
  Idol bts=Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );
  print(bts.name);
  print(bts.members);
  bts.sayhello() ;
  bts.introduce();
  
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
}

//////////////////////////////////////////////////////
// const가 있는경우 
void main() {
  Idol aespa= const Idol( 
    '에스파',
    ['카리나','닝닝','지젤','윈터']);
  
  Idol aespa2= const Idol( 
  '에스파',
  ['카리나','닝닝','지젤','윈터']);

  print(aespa.name);
  print(aespa.members);
  aespa.sayhello();
  aespa.introduce();
  
  print(aespa==aespa2);
  Idol bts=Idol.fromlist(
  [['rm','뷔','정국','지민','진','슈가'],
  'BTS']
  );
  print(bts.name);
  print(bts.members);
  bts.sayhello() ;
  bts.introduce();
  
}

class Idol{
  final String name;
  final List<String> members;
  
  //에스파외의 다른 아이돌도 클래스를 통해 생성하고싶다 ->생성자 (constructor) 사용 [간결ver]
  const Idol(this.name,this.members);

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
}
